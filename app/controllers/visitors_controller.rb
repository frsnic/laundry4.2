class VisitorsController < ApplicationController

  def index
    if user_signed_in?
      session[:store_id] = current_user.stores.first.id
      redirect_to "/members" and return
    end
  end

end
