# Bibliotech

Sistema de biblioteca full stack (TypeScript, Node, Next.js, SQL).

## Como rodar o banco

```bash
npm install
node src/db/setup.js
node src/db/seed.js
```

## Tabelas

- `item`: livros e revistas do acervo
- `usuario`: alunos e professores
- `emprestimo`: controle de retirada, devolução e multa
