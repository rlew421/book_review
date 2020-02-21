class OpenLibraryService
  def book_by_title(title)
    get_json("?title=#{title}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:docs].first
  end

  def conn
    Faraday.new(url: "http://openlibrary.org/search.json") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
