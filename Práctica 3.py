import tkinter as tk
from tkinter import ttk, scrolledtext
from urllib.request import urlopen
from bs4 import BeautifulSoup
import mysql.connector as mysql

def busca(pag):
    html= urlopen(pag)
    res= tk.Tk()
    res.title("Enlaces")
    res.tk_setPalette('light gray')
    print("\nExtraer los enlaces de la página web: "+pag+"\n")
    ttk.Label(res,text="\nEnlaces extraidos: "+pag+"\n").pack() 
    bs= BeautifulSoup(html.read(),'html.parser')
    cad=""
    enl= 0
    conex= mysql.connect(host='localhost',user='root',passwd='',db='Webs')
    op= conex.cursor()
    for enlaces in bs.find_all("a"):
        print("href: {}".format(enlaces.get("href")))
        cad+="href: {}".format(enlaces.get("href")+"\n")
        enl=+1
        op.execute('INSERT INTO Enlaces values("'+pag+'",False)')
    conex.close()
    print(str(enl)+" enlaces encontrados\n")
    obj= scrolledtext.ScrolledText(res,width=120,height=20,wrap=tk.WORD)
    obj.insert(1.0,cad)
    obj.pack()
    res.mainloop()

ventana= tk.Tk()
ventana.title("Web Scraping")
ttk.Label(ventana,text="Ingrese una página web: ").pack()
pag= tk.StringVar()
ttk.Entry(ventana,width=50,textvariable=pag).pack()
ttk.Button(ventana,text="Iniciar",command=lambda: busca(pag.get())).pack()

ventana.mainloop()