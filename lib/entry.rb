require "pg"

class Entry
  def self.get(id)
    connection = PG.connect(dbname: Connection.database_name)
    connection.exec "SELECT title, body FROM entries WHERE id = #{id}"
  end

  def self.all
    connection = PG.connect(dbname: Connection.database_name)
    connection.exec "SELECT * FROM entries"
  end
end
