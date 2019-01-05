require 'sqlite3'

DB_NAME = 'test.db'.freeze

conn = SQLite3::Database.new DB_NAME
conn.execute <<SQL
  create table my_table (
    id INTEGER PRIMARY KEY,
    posted INTEGER,
    title VARCHAR(30),
    body VARCHAR(32000));
SQL
