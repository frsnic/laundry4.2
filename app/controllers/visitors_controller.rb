class VisitorsController < ApplicationController
  
  def index
    redirect_to "/webs" if user_signed_in?
  end
  
end
