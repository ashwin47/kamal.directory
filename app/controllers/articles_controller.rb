class ArticlesController < ApplicationController
  def index
    @articles = YAML.load_file(Rails.root.join("config", "articles.yml"))
  end
end
