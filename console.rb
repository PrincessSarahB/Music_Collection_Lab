require_relative('models/artist.rb')
require_relative('models/album.rb')
require('pry-byebug')


artist1 = Artist.new(
  {
    "name" => "The Cribs"
  }
)

artist1.save()

artist2 = Artist.new(
  {
    "name" => "MUSE"
  }
)

artist2.save()

artist3 = Artist.new(
  {
    "name" => "Father John Misty"
  }
)

artist3.save()

album1 = Album.new({
  'title' => 'The New Fellas',
  'genre' => 'indie',
  'artist_id' => artist1.id
}
)
album1.save()


album2 = Album.new({
  'title' => 'Origin of Symmetry',
  'genre' => 'rock',
  'artist_id' => artist2.id
}
)
album2.save()


album3 = Album.new({
  'title' => 'Fear Fun',
  'genre' => 'folk',
  'artist_id' => artist3.id
}
)

album3.save()

album4 = Album.new({
  'title' => 'Mens needs, Womens needs, whatever!',
  'genre' => 'indie',
  'artist_id' => artist1.id
}
)

album4.save()

album5 = Album.new({
  'title' => 'Black Holes & Revelations',
  'genre' => 'rock',
  'artist_id' => artist2.id
}
)

album5.save()

album6 = Album.new({
  'title' => 'Pure Comedy',
  'genre' => 'folk',
  'artist_id' => artist3.id
}
)

album6.save()


binding.pry

nil
