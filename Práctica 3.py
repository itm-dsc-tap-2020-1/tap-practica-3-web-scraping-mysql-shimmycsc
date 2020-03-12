import tkinter as tk
from tkinter import ttk, scrolledtext
from urllib.request import urlopen
from bs4 import BeautifulSoup
import mysql.connector as mysql

conex= mysql.connect(host='localhost',user='root',passwd='',db='Webs')
op= conex.cursor(buffered=True)

def busca(pag):
    html= urlopen(pag)
    res= tk.Tk()
    res.title("Enlaces")
    res.tk_setPalette('light gray')
    print("\nExtraer los enlaces de la página web: "+pag+"\n")
    try:
        op.execute('INSERT INTO Enlaces values("'+pag+'", False)')
    except:
        pass
    op.execute('SELECT * from Enlaces where status=0')
    conex.commit()
    for pag, trsh in op:
        print("\nRevisando "+pag+"\n")
        try:
            html= urlopen(pag)
            bs= BeautifulSoup(html,'html.parser')
            for link in bs.findAll('a'):
                print('href: {}'.format(link.get('href')))
                try:
                    op.execute('INSERT INTO Enlaces values("'+link.get('href')+'", False)')
                except:
                    print("Valor Duplicado")
        except:
            print("No se pudo acceder a "+pag+"\n")
        op.execute("UPDATE Enlaces SET status=1 WHERE pagina='"+pag+"'")
        conex.commit()
        print("\nTerminó de Revisar Enlaces de "+pag)
        op.execute("SELECT * from Enlaces where status=0")
    print("Revisión de enlaces Finalizada")
    conex.commit()
    conex.close()

ventana= tk.Tk()
ventana.title("Web Scraping")
ttk.Label(ventana,text="Ingrese una página web: ").pack()
pag= tk.StringVar()
ttk.Entry(ventana,width=50,textvariable=pag).pack()
ttk.Button(ventana,text="Iniciar",command=lambda: busca(pag.get())).pack()

ventana.mainloop()