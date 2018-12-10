class Movie 
    attr_reader :title, :rank
    attr_writer :title
    def initialize(title,rank = 0)
        @title = title.capitalize
        @rank = rank 
    end
    def to_s
        "#{@title} has a rank of #{@rank} (#{status})"
    end
    def hit?
        if rank >=10
            true
        else
            false
        end
    end
    def status 
        if hit?
            "Hit"
        else
            "Flop"
        end
    end
    def thumbs_up
        @rank = @rank + 1
    end
    def thumbs_down
        @rank = @rank -1
    end
    def normalized_rank
        @rank/10
    end
end