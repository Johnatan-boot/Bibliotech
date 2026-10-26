const Database = require("better-sqlite3");
const fs = require("fs");
const path = require("path");

const db = new Database("bibliotech.db");
db.pragma("foreign_keys = ON");

const schema = fs.readFileSync(path.join(__dirname, "schema.sql"), "utf-8");
db.exec(schema);

const tabelas = db
  .prepare("SELECT name FROM sqlite_master WHERE type = 'table' AND name NOT LIKE 'sqlite_%'")
  .all();

console.log("Tabelas criadas:", tabelas.map((t) => t.name));
db.close();