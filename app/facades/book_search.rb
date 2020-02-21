class BookSearch
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def book
    conn = Faraday.new(url: "http://openlibrary.org/search.json") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("?title=The Man Who Saw Everything")

    parsed = JSON.parse(response.body)
    book = parsed["docs"]
  end
end
