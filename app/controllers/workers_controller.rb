class WorkersController < ApplicationController
  def index
    @workers = policy_scope(Worker.all)
  end

  def show
    @worker = Worker.find(params[:id])
    authorize @worker

  end

  def new 
    @worker = Worker.new
    authorize @worker

  end 

  def create
    @worker = Worker.new(worker_params)
    @worker.save 
    authorize @worker

    flash.alert = "Nouveau membre ajouté(e)"
    redirect_to workers_path
  end

  def edit
    @worker = Worker.find(params[:id])
    authorize @worker

  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    authorize @worker

    redirect_to workers_path
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    authorize @worker

    flash.alert = "Membre supprimé"
    redirect_to workers_path
  end

  private 

  def worker_params
    params.require(:worker).permit(:name, :job, :link, :order, :photo)
  end

end
