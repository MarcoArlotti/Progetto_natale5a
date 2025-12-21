-- database: instance/dati.db
CREATE TABLE IF NOT EXISTS utente (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS pagina (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titolo TEXT NOT NULL,
    sottotitolo TEXT,
    testo TEXT NOT NULL,
    id_utente INTEGER NOT NULL,
    FOREIGN KEY (id_utente) REFERENCES utente (id)
);

CREATE TABLE IF NOT EXISTS commento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titolo TEXT,
    sottotitolo TEXT,
    testo TEXT NOT NULL,
    id_utente INTEGER NOT NULL,
    id_pagina INTEGER NOT NULL,
    FOREIGN KEY (id_utente) REFERENCES utente (id),
    FOREIGN KEY (id_pagina) REFERENCES pagina (id)
);
