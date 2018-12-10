require_relative 'movie'
require_relative 'review'
require_relative 'snack_bar'
class Playlist 
    def initialize(name)
        @name = name
        @movies = []
    end
    def add_movies(movie)
        @movies << movie
    end
    def play
        puts "#{@name}'s playlist:"
        snacks = SnackBar::SNACKS
        puts "\nThere are #{snacks.size} snacks available in the snack bar"
        snacks.each do |snack|
            puts "#{snack.name} has #{snack.carbs} carbs"
        end
        @movies.each do |movie|
            snack = SnackBar.random
            puts"\n#{snack.name} with #{snack.carbs} carbs was consumed during this movie"
            Review.rev(movie)
            puts movie
        end
    end

end