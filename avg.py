def avg():
    with open('history_temperature.txt') as lineas:
	sum=0
        count=0
        for linea in lineas:
		if linea == ' ':
			pass
		else: 
		    sum+=float(linea)
		count+=1
    return str(round(sum/count,2))

#print('The average is: ' + avg() + '\n')
