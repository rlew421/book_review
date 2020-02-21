class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "http://openlibrary.org/search.json") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("?title=The Man Who Saw Everything")

    parsed = JSON.parse(response.body)
  end
end
