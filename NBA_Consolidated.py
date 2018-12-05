
# coding: utf-8

# In[1]:


import datetime
import pandas as pd
from sqlalchemy import create_engine
import pymysql
pymysql.install_as_MySQLdb()

# ### Extract CSVs into DataFrames

# In[2]:


player_file = "Resources/player_data.csv"
player_data_df = pd.read_csv(player_file)
player_data_df.head()

# In[3]:


NBA_player_week_file = "Resources/NBA_player_of_the_week.csv"
NBA_player_week_df = pd.read_csv(NBA_player_week_file)
NBA_player_week_df.head()

# In[4]:


NBA_player_week_df.columns



# ### Transform player DataFrame

# In[5]:


new_player_data_df = player_data_df[['name', 'birth_date', 'height']].copy()
new_player_data_df.columns = ['player_name', 'birth_date', 'height']
new_player_data_df['id'] = new_player_data_df.index
new_player_data_df['name_height']= new_player_data_df['player_name']+'_'+new_player_data_df['height']


# In[6]:


# Create a filtered dataframe from specific columns
df = new_player_data_df
new_NBA_player_week_df = NBA_player_week_df[["Player", "Age", "Height", "Real_value"]].copy()
new_NBA_player_week_df.head()


# In[7]:

df['birth_date'] = pd.to_datetime(df['birth_date'])


# ### Create database connection

# In[8]:


rds_connection_string = "root:j9stuart@127.0.0.1/nba_players"
engine = create_engine(f'mysql://{rds_connection_string}')


# In[9]:


# Confirm tables
engine.table_names()


# ### Load DataFrames into database

# In[10]:


df.to_sql(name='player_birth_date', con=engine, if_exists='append', index=False)
new_NBA_player_week_df.to_sql(name='player_week', con=engine, if_exists='replace', index=False)

# In[11]:

pd.read_sql_query('select * from player_week', con=engine).head()

# In[12]:

pd.read_sql_query('select * from player_birth_date', con=engine).head()

