const Database = require("better-sqlite3");
const fs = require("fs");
const path = require("path");

const db = new Database("bibliotech.db");
db.pragma("foreign_keys = ON");

const seed = fs.readFileSync(path.join(__dirname, "seed.sql"), "utf-8");
db.exec(seed);

console.log("Itens:", db.prepare("SELECT COUNT(*) AS total FROM item").get().total);
console.log("Usuarios:", db.prepare("SELECT COUNT(*) AS total FROM usuario").get().total);
console.log("Emprestimos:", db.prepare("SELECT COUNT(*) AS total FROM emprestimo").get().total);
db.close();