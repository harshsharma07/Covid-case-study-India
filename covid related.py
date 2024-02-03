
import pandas as pd
from sqlalchemy import create_engine
import codecs


conn_string = 'postgresql://postgres:admin@localhost/covid2023'
db = create_engine(conn_string)
conn = db.connect()

files = ['covid_data']
for file in files:
    df = pd.read_csv(f'/Users/harshsharma/Downloads/{file}.csv',encoding='unicode_escape')
    df.to_sql(file, con=conn, if_exists='replace', index=False)

