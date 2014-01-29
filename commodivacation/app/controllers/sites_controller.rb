class SitesController < ApplicationController

  def index 
    @locations = Location.all
  end 

  

end
