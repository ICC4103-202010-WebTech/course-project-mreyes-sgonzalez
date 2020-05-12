class HomeController < ApplicationController
  def index
    @events = Event.limit(5)
  end
end
