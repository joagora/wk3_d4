# require('pg')
require_relative('./models/movie')
require_relative('./models/star')
require_relative('./models/casting')
require('pry')

movie1 = Movie.new({ 'title' => 'The Breakfast Club', 'genre' => 'Comedy' })
movie1.save()
movie2 = Movie.new({ 'title' => 'Train of Life', 'genre' => 'Comedy' })
movie2.save()
movie3 = Movie.new({ 'title' => 'Siberia', 'genre' => 'Thriller' })
movie3.save()
star1 = Star.new({ 'first_name' => 'Molly', 'last_name' => 'Ringwald' })
star1.save()
star2 = Star.new({ 'first_name' => 'Clement', 'last_name' => 'Harari' })
star2.save()
star3 = Star.new({ 'first_name' => 'Emilio', 'last_name' => 'Estevez' })
star3.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 5000000 })
casting1.save()
casting2 = Casting.new({ 'movie_id' => movie3.id, 'star_id' => star1.id, 'fee' => 7000000 })
casting2.save()

# p casting1.star()
# p movie3.stars
p star1.movies
