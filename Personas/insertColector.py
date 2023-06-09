# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 00:51:59 2023

@author: Cristobal
"""

import pandas as pd
import psycopg2
from psycopg2 import sql

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/Personas/colector.xlsx')



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
    query = "INSERT INTO colector (col_id, col_nombre, col_apellido, col_fecha, col_metodo, col_destino) VALUES (%s, %s, %s, %s, %s, %s)"
    cur.execute(query, (row['col_ide'], row['col_nombre'], row['col_apellido'], row['col_fecha'], row['col_metodo'], row['col_destino']))

# Commitea los cambios y cierra la conexión
conn.commit()
cur.close()
conn.close()