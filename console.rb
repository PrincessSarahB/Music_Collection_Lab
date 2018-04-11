require_relative('models/artists.rb')
require_relative('albums.rb')
require('pry-byebug')


    artist1 = Artist.new(
      {
        'name' => 'The Cribs'
      }
    )

      artist1.save()

    artist2 = Artist.new(
      {
        'name' => 'MUSE'
      }
    )

      artist2.save()

    artist3 = Artist.new(
      {
        'name' => 'Father John Misty'
      }
    )

      artist3.save()

    binding.pry

    nil
