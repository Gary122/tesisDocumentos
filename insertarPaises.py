# -*- coding: utf-8 -*-
"""
Created on Tue Jun  6 21:28:41 2023

@author: Cristobal
"""

import pandas as pd
import psycopg2
from psycopg2 import sql

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/paises.xlsx')

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
    # Crea la consulta SQL
    query = "INSERT INTO pais (pas_nombre) VALUES (%s)"
    # Ejecuta la consulta SQL
    cur.execute(query, (row['pais_nombre'],))

# Commitea los cambios y cierra la conexión
conn.commit()
cur.close()
conn.close()
