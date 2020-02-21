class NewYorkTimesService
  def reviews_by_title(title)
    get_json("?api-key=#{ENV['NY_TIMES_API_KEY']}&title=#{title}")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)[:results]
  end

  def conn
    Faraday.new(url: "https://api.nytimes.com/svc/books/v3/reviews.json") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
