import os, sys, subprocess
from avg import avg

#getting the current system temperature
comand  = "/opt/vc/bin/vcgencmd measure_temp"
currentResult = os.popen(comand).read()
currentResult = currentResult[5:9]
#reading the file
with open('temperature.txt', 'r') as f:
    lineas = [linea.split("=") for linea in f]
f.close()
#temperatureReaded = ' '
#reading the file's temperature
for linea in lineas:
    temperatureReaded = linea[0]

#parsing
temperatureReaded = temperatureReaded[:4]

f = open('temperature.txt', 'a')
if currentResult > temperatureReaded:
    f.write ("The temperature is increased, current temperature: \n" + currentResult + "\n")
else:
    f.write ("The temperatue is decreased, current temperature: \n" + currentResult + "\n")
    f.write('The average temperature is: '+ avg() + '\n')
f.close()
