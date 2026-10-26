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


CREATE TABLE emprestimo (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_id INTEGER NOT NULL REFERENCES item(id),
  usuario_id INTEGER NOT NULL REFERENCES usuario(id),
  data_retirada TEXT NOT NULL,
  data_devolucao_prevista TEXT NOT NULL,
  data_devolucao TEXT,
  valor_multa REAL NOT NULL DEFAULT 0
);