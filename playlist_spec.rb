require_relative 'playlist'

describe Playlist do
    before do
        initial_rank = 10
        @movie = Movie.new("goonies",initial_rank)
        @playlist = Playlist.new("p1")
        @playlist.add_movies(@movie)
    end
    it "gives movie thumbs up when rolling a high number" do
        Review.stub(:roll_die).and_return(5)
        @playlist.play
        @movie.rank.should == 11
    end
    it "movie rank stays the same if a medium number is rolled" do
        Review.stub(:roll_die).and_return(3)
        @playlist.play
        @movie.rank.should == 10
    end
    it "gives movie a thumbs down when rolling a low number" do
        Review.stub(:roll_die).and_return(1)
        @playlist.play
        @movie.rank.should == 9
    end
end