# Sqlite

## Convert mysql dump to Sqlite3 compatible dump
* https://github.com/dumblob/mysql2sqlite

## Import into Sqlite3
* https://stackoverflow.com/questions/2049109/how-do-i-import-sql-files-into-sqlite-3

From a Sqlite prompt:
```bash
sqlite> .read db.sql
```

From shell:
```bash
cat db.sql | sqlite3 database.db
```