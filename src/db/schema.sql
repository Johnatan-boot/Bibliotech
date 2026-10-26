CREATE TABLE item (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  codigo TEXT NOT NULL UNIQUE,
  titulo TEXT NOT NULL,
  tipo TEXT NOT NULL CHECK (tipo IN ('livro', 'revista')),
  autor TEXT,
  edicao TEXT,
  disponivel INTEGER NOT NULL DEFAULT 1
);




CREATE TABLE usuario (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome TEXT NOT NULL,
  tipo TEXT NOT NULL CHECK (tipo IN ('aluno', 'professor')),
  limite_itens INTEGER NOT NULL CHECK (limite_itens > 0)
);