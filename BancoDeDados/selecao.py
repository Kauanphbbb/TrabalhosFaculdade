# _*_ coding: utf-8 _*_
import mysql.connector
from config import *

try:
    connection = mysql.connector.connect(
        host=HOST, user=USER, password=PASSWORD, database=DATABASE)

    cursor = connection.cursor(dictionary=True)

    # executar sql
    cursor.execute("SELECT * FROM contato ")

    # recuperar  dados
    resultado = cursor.fetchall()

    # mostrar resultado
    print('Agenda: ')

    for linha in resultado:
        print(linha)

    cursor.close()
except:
    print("Erro ao procurar contatos")
