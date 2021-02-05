# _*_ coding: utf-8 _*_
import mysql.connector
from config import *

try:
    connection = mysql.connector.connect(
        host=HOST, user=USER, password=PASSWORD, database=DATABASE)
    cursor = connection.cursor(dictionary=True)

    # executar sql
    cursor.execute("SELECT * FROM contato ")

    resultado = cursor.fetchall()

    print("===== CONTATOS =====")
    for contato in resultado:
        print(f"{contato['idcontato']} - {contato['nome']}")

    id_contato = int(input("Informe o contato que você deseja apagar: "))

    cursor.execute(
        f'DELETE FROM contato WHERE idContato="{id_contato}"')

    connection.commit()
except:
    print("Erro ao inserir contato")
