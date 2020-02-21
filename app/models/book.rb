class Book
  attr_reader :title, :author_name

  def initialize(attributes = {})
    @title = attributes[:title]
    @author_name = attributes[:author_name].first
  end
end
