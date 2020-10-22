def clear_entries_table
  @connection = PG.connect(dbname: Connection.database_name)
  @connection.exec "TRUNCATE TABLE entries RESTART IDENTITY"
end
