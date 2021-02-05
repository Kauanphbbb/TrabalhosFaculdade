# _*_ coding: utf-8 _*_
import mysql.connector
from config import *

try:
    connection = mysql.connector.connect(
        host=HOST, user=USER, password=PASSWORD, database=DATABASE)
    cursor = connection.cursor(dictionary=True)

    nome = input("Digite o nome: ")
    cidade = input("Digite a cidade: ")
    telefone = input("Digite o telefone: ")
    email = input("Digite o email: ")

    cursor.execute(
        f'INSERT INTO contato (nome, cidade, telefone, email) VALUES ("{nome}","{cidade}", "{telefone}", "{email}")')

    connection.commit()
except:
    print("Erro ao inserir contato")
