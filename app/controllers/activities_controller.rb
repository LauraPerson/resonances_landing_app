class ActivitiesController < ApplicationController
  def index 
    @activities = Activity.all
  end
  
  def new
    @activity = Activity.new
    authorize @activity
  end


  def create
    @activity = Activity.new(activity_params)
    @activity.save 
    flash.alert = "Nouvelle activités Ajoutée"
    authorize @activity

    redirect_to activities_path
  end


  def edit
    @activity = Activity.find(params[:id])
    authorize @activity
  end


  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    authorize @activity

    redirect_to activities_path
  end


  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    authorize @activity
    flash.alert = "Activité supprimée"
    redirect_to activities_path
  end

  private 

  def activity_params
    params.require(:activity).permit(:title, :description, :photo)
  end

end
