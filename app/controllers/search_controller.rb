class SearchController < ApplicationController
  def index
    render locals: {
      search_results: BookSearch.new(params[:title])
    }
  end
end
