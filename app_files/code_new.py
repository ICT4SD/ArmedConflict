import folium
import pandas as pd
from pandas import ExcelWriter
from pandas import ExcelFile

def analyze():
    m = folium.Map([29.22889, 45], zoom_start=5)
    countryData = pd.read_csv("dataSmall.csv")
    m.choropleth(
        geo_data=open("countries.json").read(),
        data=countryData,
        columns=['Country', 'Value'],
        key_on='feature.id',
        fill_color='YlGn',
        )
    df = pd.read_excel("newdata.xlsx", sheet_name='Sheet1')

    for n in range(13):
        name = df['Row Labels'][n]
        x = df['Sum of best_est'][n]
        y = df['Latitude'][n]
        z = df['Longitude'][n]
        if x <= 100:
            r = 5
        elif x <= 1000:
            r = 10
        elif x <= 10000:
            r = 15
        else:
            r = 30
        folium.CircleMarker([y, z],
                        radius=r,
                        popup=name + ': ' + str(x),
                        color='#AC0700',
                        fill_color='#db2119',
                       ).add_to(m)
    '''try:
        m.save('map.html')
        print('Done')
    except:
        print('Some error occurred')'''
    return m