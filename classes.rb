class Movie
    attr_reader :rank
    attr_accessor :title

    def initialize(title, rank=0)
        @title = title.capitalize
        @rank = rank
    end

    def normalized_rank
        @rank / 10
    end
    
    def thumbs_up
        @rank = @rank + 1    
    end

    def thumbs_down
        @rank = @rank - 1    
    end

    def to_s
        puts "#{@title} has a rank of #{normalized_rank}"    
    end
end

movie1 = Movie.new("goonies", 10)
movie1.thumbs_up
puts movie1
puts movie1.title
movie1.title = "Gooneys!"
puts movie1.normalized_rank


movie2 = Movie.new("ghostbusters", 9)
movie2.thumbs_down
puts movie2

movie3 = Movie.new("goldfinger")
puts movie3

