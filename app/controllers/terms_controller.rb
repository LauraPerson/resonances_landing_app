class TermsController < ApplicationController
  

  def index
    @terms = Term.all
  end

  def new
    @term = Term.new
    authorize @term

  end


  def edit
    @term = Term.find(params[:id])
    authorize @term

  end

  def update
    @term = Term.find(params[:id])
    @term.update(term_params)
    flash.alert = "Mentions légales mises à jour"
    authorize @term
    redirect_to dashboard_path(current_user)
  end

  def destroy
    @term = Term.find(params[:id])
    @term.destroy
    authorize @term

    flash.alert = "Mention légale supprimée"
    redirect_to terms_path
  end

  private 

  def term_params
    params.require(:term).permit(:content)
  end
end
