# _*_ coding: utf-8 _*_ 
import mysql.connector

connection = mysql.connector.connect(host='localhost', user ='newUser', password='', database='agenda' )
cursor = connection.cursor(dictionary = True)

nome = input("Digite o nome: ")
#print(nome)
#print(type(nome))
cidade = input("Digite a cidade: ")
telefone = input("Digite o telefone: ")
email = input("Digite o email: ")
#print(email)
#print(type(email))

cursor.execute(f'INSERT INTO contato (nome, cidade, telefone, email) VALUES ("{nome}","{cidade}", "{telefone}", "{email}")')


connection.commit()



