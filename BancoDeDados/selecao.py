# _*_ coding: utf-8 _*_ 
import mysql.connector

connection = mysql.connector.connect(host='localhost', user ='newUser', password='', database='agenda' )


cursor = connection.cursor(dictionary = True)

#executar sql
cursor.execute("SELECT * FROM contato ")

#recuperar  dados 

resultado = cursor.fetchall()

#mostrar resultado
print('Agenda: ')

for linha in resultado : 
	print(linha)


cursor.close()
