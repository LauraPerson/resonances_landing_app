require "json"
require "open-uri"


class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @contact = Contact.new
    @clients = Client.all
    @last_articles = Article.all.sort_by{|e| e[:created_at]}.last(3)
    @workers = Worker.all
    @concepts = Concept.all
    @activities = Activity.all
    @benefits = Benefit.all
  end
end
