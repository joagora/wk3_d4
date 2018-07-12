require_relative('../db/sql_runner')

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


  # Update


  # Delete


end
