# app/main.py
from flask import Blueprint, render_template, g

bp = Blueprint('main', __name__)

@bp.route('/')
def home():
    title = "Pagina Principale"
    message = "we"
    name = "FABIO"
    return render_template('home.html', title=title, message=message, name=name)
        

@bp.route('/pagina', methods=('GET',))
def mostra_pagina():
    titolo = g.titolo
    sottotitolo = g.sottotitolo
    testo = g.testo
    utente = g.utente
    return render_template('pagina.html',titolo,sottotitolo,testo,utente)
