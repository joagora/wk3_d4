class Casting

  def initialize(options)
    @id = options['id'].to_i if options['id'] != nil
    @movie_id = options['movie_id'].to_i
    @star_id = options['star_id'].to_i
    @fee = options['fee']
  end

end
