class OpenLibraryService
  def book_by_title(title)
    conn = Faraday.new(url: "http://openlibrary.org/search.json") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("?title=#{title}")

    parsed = JSON.parse(response.body, symbolize_names: true)[:docs].first
  end
end
