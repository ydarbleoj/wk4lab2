class LocationsController < ApplicationController

  def show 
    id = params.require(:id)
    @location = Location.find(id)
  end


  def index
    @categories = Category.all
  end

  def new
    @location = Location.new
  end

  def create
    new_location = params.require(:location).permit(:name)
    location = Location.create(new_location)

    redirect_to location
  end

  # def show
  #   @category = Category.find(params[:id])
  # end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    location = Location.find(params[:id])
    updated_info = params.require(:location).permit(:name)
    location.update_attributes(updated_info)

    redirect_to location
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy

    redirect_to locations_path
  end

end



end
