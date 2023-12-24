class SearchController < ApplicationController
  def index
    @results = Kamalfile.with_favorites.search(params[:query])
  end
end
