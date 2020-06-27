class Admin::HomeController < ApplicationController
  def index
    @events = Event.limit(3)
  end
end
