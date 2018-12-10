module Review
    def self.roll_die
        rand(1..6)
    end
    def self.rev(movie)
        rolled_num = roll_die
        if rolled_num < 3
            movie.thumbs_down
        elsif rolled_num > 4
            movie.thumbs_up
        end 
    end
end