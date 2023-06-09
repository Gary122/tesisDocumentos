# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 00:05:10 2023

@author: Cristobal
"""

import pandas as pd
import psycopg2
from psycopg2 import sql

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/Taxos/Especie.xlsx')

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
    query = "INSERT INTO especie (esp_id, gen_id,esp_nombre, esp_sexo) VALUES (%s, %s, %s, %s)"
    cur.execute(query, (row['especie_id'], row['gen_id'], row['especie_nombre'], row['especie_sexo']))

# Commitea los cambios y cierra la conexión
conn.commit()
cur.close()
conn.close()