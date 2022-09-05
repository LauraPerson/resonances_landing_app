class ConceptsController < ApplicationController


  def index 
    @concepts = Concept.all
  end
  
  def new
    @concept = Concept.new
    authorize @concept
  end


  def create
    @concept = Concept.new(concept_params)
    @concept.save 
    flash.alert = "Nouveau concept Ajouté"
    authorize @concept

    redirect_to concepts_path
  end


  def edit
    @concept = Concept.find(params[:id])
    authorize @concept
  end


  def update
    @concept = Concept.find(params[:id])
    @concept.update(concept_params)
    authorize @concept

    redirect_to concepts_path
  end


  def destroy
    @concept = Concept.find(params[:id])
    @concept.destroy
    authorize @concept
    flash.alert = "Concept supprimé"
    redirect_to concepts_path
  end


  private 

  def concept_params
    params.require(:concept).permit(:description, :photo)
  end
end
