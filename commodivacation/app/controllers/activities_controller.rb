class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    new_activity = params.require(:activity).permit(:name)
    activity = Activity.create(new_activity)

    redirect_to activity
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    activity = Activity.find(params[:id])
    updated_info = params.require(:activity).permit(:name)
    activity.update_attributes(updated_info)

    redirect_to activity
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy

    redirect_to activities_path
  end


end
