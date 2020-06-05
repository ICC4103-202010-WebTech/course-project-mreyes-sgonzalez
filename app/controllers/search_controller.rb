class SearchController < ApplicationController

  def search
    ##Search 5.1,5.2,5.4,5.5
    @organization=Organization.where(name: params[:q])
    @events = Event.all
    # TODO: Create 1 table merged from both queries
    @user=User.joins(:profile).where(username: params[:q])
    @profile=Profile.joins(:user).where(name: params[:q])
    @event = Event.where(title: params[:q])
    @event_by_organization = EventListOrganization.all

  end
end
