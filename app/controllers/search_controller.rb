class SearchController < ApplicationController

  def search


    @organization=Organization.where(name: params[:q])


    ##Search 5.1
    # TODO: Create 1 table merged from both queries
    @user=User.where(username: params[:q])
    @profile=Profile.where(name: params[:q])

    if @user!=nil
      @user.each do |u|
        @eventCreator = @eventCreator.merge(Event.joins(:user).where(users: {id: u.id}))
        rescue
      end
      puts(@eventCreator)
    end















  end


end
