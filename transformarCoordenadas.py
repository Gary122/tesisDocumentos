# -*- coding: utf-8 -*-
"""
Created on Thu Jun  8 02:00:49 2023

@author: Cristobal
"""

import pandas as pd
import re

# Lee el archivo de Excel y obtén el DataFrame
df = pd.read_excel('C:/Users/Cristobal/Desktop/ScripTesis/pruebaCoor.xlsx')

# Función para convertir de grados, minutos y segundos a formato decimal
def dms_to_decimal(dms):
    match = re.search(r'(-?)(\d+)[°º](\d+)’(\d+(\.\d+)?|(\,\d+)?)(ˮ|”)?([NSEOOW])', dms.strip())
    if match:
        neg, degrees, minutes, seconds, _, _, _, direction = match.groups()
        decimal = float(degrees) + float(minutes)/60 + float(seconds.replace(',', '.') if seconds else 0)/(60*60)
        if direction in ['S','O', 'W'] or neg:
            decimal *= -1
        return decimal
    else:
        print(f'No se pudo parsear: {dms}')
        return None

# Aplica la función a cada parte de las coordenadas
df['latitud'] = df['coordenadas'].apply(lambda x: dms_to_decimal(x.split(',')[0]))
df['longitud'] = df['coordenadas'].apply(lambda x: dms_to_decimal(x.split(',')[1]) if len(x.split(',')) > 1 else None)

print(df)

df.to_excel('C:/Users/Cristobal/Desktop/ScripTesis/Personas/identificador_converted.xlsx', index=False)