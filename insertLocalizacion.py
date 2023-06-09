# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 02:40:00 2023

@author: Cristobal
"""

import pandas as pd
import psycopg2
from psycopg2 import sql

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/localizacion.xlsx')



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
    # Redondea los valores de latitud y longitud a 6 decimales
    lat = round(row['loc_latitud'], 6)
    lon = round(row['loc_longitud'], 6)

    # Crea la consulta SQL para la tabla 'reino'
    query = "INSERT INTO localizacion (loc_id, esp_id, loc_localidad, loc_parque_nacional, loc_minima_altitud, loc_maxima_altitud, loc_informacion_ecologica, loc_latitud, loc_longitud) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"
    cur.execute(query, (row['loc_id'], row['esp_id'], row['loc_localidad'], row['loc_parque_nacional'], row['loc_minima_altitud'], row['loc_maxima_altitud'], row['loc_informacion_ecologica'], lat, lon))

# Commitea los cambios y cierra la conexión
conn.commit()
cur.close()
conn.close()