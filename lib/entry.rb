require "pg"

class Entry
  def self.get(id, connection = PG.connect(dbname: Connection.database_name))
    connection.exec "SELECT id, title, body FROM entries WHERE id = #{id}"
  end

  def self.add(title, body, connection = PG.connect(dbname: Connection.database_name))
    connection.exec "INSERT INTO entries (title, body) VALUES ('#{title}', '#{body}')"
  end

  def self.edit(id, new_body, connection = PG.connect(dbname: Connection.database_name))
    connection.exec "UPDATE entries SET body='#{new_body}' WHERE id = #{id}"
  end

  def self.all(connection = PG.connect(dbname: Connection.database_name))
    connection.exec "SELECT * FROM entries"
  end
end
