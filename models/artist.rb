require('pg')
require_relative('album.rb')
require_relative('../db/sql_runner.rb')

class Artist

attr_reader :id
attr_accessor :name

def initialize(options)

@id = options["id"].to_i
@name = options["name"]

end

def save()
  sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id;"
  values = [@name]
  result = SqlRunner.run(sql, values)
  @id = result[0]["id"].to_i
end

def Artist.all()
  sql = "SELECT * FROM artists;"
  artists = SqlRunner.run(sql)
  return artists.map{|artist| self.new(artist)}
end

def delete()
  sql = "DELETE FROM artists WHERE id = $1;"
  values = [@id]
  SqlRunner.run(sql, values)
end

def list_albums()
sql = "SELECT * FROM albums WHERE artist_id = $1;"
values = [@id]
albums = SqlRunner.run(sql, values)
return albums.map {|album| Album.new(album)}

end

def self.delete_all()
  sql = "DELETE FROM artists;"
  SqlRunner.run(sql)
end


end
