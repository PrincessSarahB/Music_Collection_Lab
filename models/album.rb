require('pg')
require_relative('artist.rb')
require_relative('../db/sql_runner.rb')

class Album


  def initialize(options)
    @id = options["id"].to_i
    @title = options["title"]
    @year = options["year"].to_i
    @artist_id = options["artist_id"].to_i
  end




end
