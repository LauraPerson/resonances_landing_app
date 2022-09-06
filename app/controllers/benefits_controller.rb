class BenefitsController < ApplicationController

    def index 
      @benefits = Concept.all
    end
    
    def new
      @benefit = Benefit.new
      authorize @benefit
    end
  
  
    def create
      @benefit = Benefit.new(benefit_params)
      @benefit.save 
      flash.alert = "Nouvel avantage ajouté"
      authorize @benefit
  
      redirect_to benefits_path
    end
  
  
    def edit
      @benefit = Benefit.find(params[:id])
      authorize @benefit
    end
  
  
    def update
      @benefit = Benefit.find(params[:id])
      @benefit.update(benefit_params)
      authorize @benefit
  
      redirect_to benefits_path
    end
  
  
    def destroy
      @benefit = Benefit.find(params[:id])
      @benefit.destroy
      authorize @benefit
      flash.alert = "Avantage supprimé"
      redirect_to benefits_path
    end
  
  
    private 
  
    def concept_params
      params.require(:benefit).permit(:title, :description, :photo)
    end
  
end
