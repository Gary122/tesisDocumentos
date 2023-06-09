# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 01:13:21 2023

@author: Cristobal
"""

import pandas as pd
import psycopg2
from psycopg2 import sql

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/Personas/referencia.xlsx')

# Conéctate a la base de datos PostgreSQL
conn = psycopg2.connect(
    host="localhost",
    database="proyectoTitulacion",
    user="postgres",
    password="jnc18241"
)

# Crea un cursor
cur = conn.cursor()

# Recorre cada fila en el DataFrame y añádela a la base de datos
for index, row in df.iterrows():
    # Crea la consulta SQL para la tabla 'reino'
    query = "INSERT INTO referencia (ref_id, ref_doi, ref_titulo) VALUES (%s, %s, %s)"
    cur.execute(query, (row['ref_id'], row['ref_doi'], row['ref_titulo']))

# Commitea los cambios y cierra la conexión
conn.commit()
cur.close()
conn.close()