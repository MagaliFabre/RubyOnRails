class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Afficher uniquement les activités de l'utilisateur actuellement connecté
    @activities = current_user.activities
  end

  def show
    # Récupérer l'activité à partir de l'ID et afficher
    @activity = current_user.activities.find(params[:id])
  end

  def new
    # Logique pour la création d'une activité
    puts "Current User: #{current_user.inspect}" 
    @activity = current_user.activities.build
    @activity.name = params[:activity_name]
  end

  def create
    @activity = current_user.activities.build(activity_params)

    if @activity.save
      redirect_to @activity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @activity = current_user.activities.find(params[:id])
  end

  def update
    @activity = current_user.activities.find(params[:id])

    if @activity.update(activity_params)
      redirect_to @activity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @activity = current_user.activities.find(params[:id])

    if @activity.destroy
      redirect_to activities_path, notice: 'Activity was successfully deleted.'
    else
      redirect_to activities_path, alert: 'Failed to delete activity.'
    end
  end
  
  private

  def activity_params
    params.require(:activity).permit(:name, :date_and_time, :comments, :duration)
  end
end
