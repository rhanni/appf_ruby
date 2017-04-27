def movie_listing(movie, rank=0)
    today = weekday
    puts "#{today.upcase}: #{movie.capitalize} has a rank of #{rank}"
end

def weekday
    current_time = Time.new
    current_time.strftime("%A")
end

movie_listing("goonies", 10)
movie_listing("ghostbusters", 9)
movie_listing("goldfinger")
