class Movie

  def initialize(options)
    @id = options['id'].to_i  if options['id'] != nil
    @title = options['title']
    @genre = options['genre']
  end

end
