# require('pg')
require_relative('./models/movie')
require_relative('./models/star')
require_relative('./models/casting')
require('pry')

movie1 = Movie.new({ 'title' => 'The Breakfast Club', 'genre' => 'Comedy' })
movie1.save()

star1 = Star.new({ 'first_name' => 'Molly', 'last_name' => 'Ringwald' })
star1.save()

casting1 = Casting.new({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 5000000 })
casting1.save()
