require_relative 'playlist'

movie1 = Movie.new("goonies",100)
movie2 = Movie.new("ghostbusters",9)
movie3 = Movie.new("goldfinger")

playlist1 = Playlist.new("Shenalie")
playlist1.add_movies(movie1)
playlist1.add_movies(movie2)
playlist1.add_movies(movie3)
playlist1.play

playlist2 = Playlist.new("Tyler")
playlist2.add_movies(movie3)
movie4 = Movie.new("Gremlins",15)
playlist2.add_movies(movie4)
playlist2.play