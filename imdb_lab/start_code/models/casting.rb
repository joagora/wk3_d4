require_relative('../db/sql_runner')

class Casting

  def initialize(options)
    @id = options['id'].to_i if options['id'] != nil
    @movie_id = options['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee']
  end

  # Create

  def save()
    sql = "INSERT INTO castings (movie_id, star_id, fee) VALUES ($1, $2, $3) RETURNING id"
    values = [@movie_id, @star_id, @fee]
    result = SqlRunner.run(sql, values)
    @id = result.first['id'].to_i
  end

  # Read
  def movie
    sql = "SELECT * FROM movies WHERE id = $1;"
    values = [@movie_id]
    result = SqlRunner.run(sql, values)
    movie = Movie.new(result.first)
    return movie
  end

  def star
    sql = "SELECT * FROM stars WHERE id = $1;"
    values = [@star_id]
    result = SqlRunner.run(sql, values)
    star = Star.new(result.first)
    return star
  end
  # Update


  # Delete

end
