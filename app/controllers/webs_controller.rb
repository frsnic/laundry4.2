class WebsController < ApplicationController

  def index
    @members = Member.all
  end

end
