INSERT INTO item (codigo, titulo, tipo, autor, edicao, disponivel) VALUES
  ('LIV001', 'Clean Code', 'livro', 'Robert C. Martin', '1ª', 0),
  ('LIV002', 'Dom Casmurro', 'livro', 'Machado de Assis', '2ª', 1),
  ('REV001', 'Revista Superinteressante', 'revista', NULL, '450', 1),
  ('REV002', 'Revista Veja', 'revista', NULL, '2900', 1);

INSERT INTO usuario (nome, tipo, limite_itens) VALUES
  ('Maria Souza', 'aluno', 3),
  ('Prof. Carlos Lima', 'professor', 5);

INSERT INTO emprestimo (item_id, usuario_id, data_retirada, data_devolucao_prevista, data_devolucao, valor_multa) VALUES
  (1, 1, '2026-10-20', '2026-11-03', NULL, 0),
  (2, 2, '2026-10-01', '2026-10-15', '2026-10-18', 1.5);