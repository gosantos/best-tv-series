class Series
  attr_reader :id, :name, :quote

  def initialize(id, name, quote)
    @id = id
    @name = name
    @quote = quote
  end

end
