require_relative 'movie'

describe Movie do
    before do
        initial_rank = 10
        @movie = Movie.new("goonies",initial_rank)
    end

    it "has a capitalized title" do
        @movie.title.should == "Goonies"
    end
    it "has an initial rank" do
        @movie.rank.should == 10
    end
    it "has a string representation" do
        @movie.to_s.should =="Goonies has a rank of 10 (Hit)"
    end
    it "increased rank by 1" do
        @movie.thumbs_up.should == 11
    end
    it "decreases rank by 1" do
        @movie.thumbs_down.should == 9
    end
    context "created with default rank" do
        it "has a rank of 0" do
            movie1 = Movie.new("goonies")
            movie1.rank.should == 0
        end
    end
    context "with a rank of at least 10" do
        before do 
            @movie = Movie.new("abcd", 10)
        end
        it "is a hit" do
           @movie.hit?.should == true
        end
        it "has a hit status" do
            @movie.status.should == "Hit"
        end
    end
    context "with a rank of less than 10" do
        before do 
            @movie = Movie.new("abcd", 9)
        end
        it "is not a hit" do
           @movie.hit?.should == false
        end
        it "has a flop status" do
            @movie.status.should == "Flop"
        end
    end
end