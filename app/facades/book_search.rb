class BookSearch
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def book
    service = OpenLibraryService.new
    book_data = service.book_by_title(title)
    book = Book.new(book_data)
  end

  def reviews
    service = NewYorkTimesService.new
    service.reviews_by_title(title).map do |review_data|
      Review.new(review_data)
    end
  end
end
