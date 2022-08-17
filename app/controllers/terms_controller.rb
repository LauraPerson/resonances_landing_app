class TermsController < ApplicationController
  
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

  private 

  def term_params
    params.require(:term).permit(:content)
  end
end
