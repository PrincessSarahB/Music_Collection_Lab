require('pg')
require_relative('artist.rb')
require_relative('../db/sql_runner.rb')

class Album

attr_reader :id
attr_accessor :title, :genre, :artist_id
  def initialize(options)
    @id = options["id"].to_i
    @title = options["title"]
    @genre = options["genre"]
    @artist_id = options["artist_id"].to_i
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist_id) VALUES ($1, $2, $3) RETURNING id;"
    values = [@title, @genre, @artist_id]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end
  #
  def Album.all()
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    return albums.map{|album| self.new(album)}
  end
  #
  def delete()
    sql = "DELETE FROM albums WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end
  #
  def Album.delete_all()
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end


def show_artist()
sql = "SELECT * FROM artists WHERE id = $1;"
values = [@artist_id]
artists = SqlRunner.run(sql, values)
return Artist.new(artists[0])


end

end
