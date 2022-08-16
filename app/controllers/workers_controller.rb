class WorkersController < ApplicationController
  def index
    @workers = Worker.all
  end

  def show
    @worker = Worker.find(params[:id])
  end

  def new 
    @worker = Worker.new
  end 

  def create
    @worker = Worker.new(worker_params)
    @worker.save 
    flash.alert = "Nouveau membre ajouté(e)"
    redirect_to workers_path
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    redirect_to workers_path
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    flash.alert = "Membre supprimé"
    redirect_to workers_path
  end

  private 

  def worker_params
    params.require(:worker).permit(:name, :job, :link, :photo)
  end

end
