class Star

  def initialize(options)
    @id = options['id'].to_i if options['id'] != nil
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

end
