require_relative('../db/sql_runner')
require_relative('casting')
require_relative('star')
class Movie

  attr_accessor :id

  def initialize(options)
    @id = options['id'].to_i  if options['id'] != nil
    @title = options['title']
    @genre = options['genre']
  end

  # Create

  def save()
    sql = "INSERT INTO movies (title, genre) VALUES ($1, $2) RETURNING id"
    values = [@title, @genre]
    result = SqlRunner.run(sql, values)
    @id = result.first['id'].to_i
  end


  # Read
  def stars()
    sql = "SELECT stars.* FROM stars INNER JOIN castings ON castings.star_id = stars.id WHERE castings.movie_id = $1;"
    values = [@id]
    result = SqlRunner.run(sql, values)
    stars = result.map {|star| Star.new(star)}
    return stars
  end
  # Update


  # Delete


end
