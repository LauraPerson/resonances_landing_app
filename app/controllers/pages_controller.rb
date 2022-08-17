class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @clients = Client.all
    @last_articles = Article.all.sort_by{|e| e[:created_at]}.last(3)
    @workers = Worker.all
  end
end
