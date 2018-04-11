require('pg')
require_relative('album.rb')
require_relative('../db/sql_runner.rb')

class Artist

def initialize(options)

@id = options["id"].to_i
@name = options["name"]

end










end
