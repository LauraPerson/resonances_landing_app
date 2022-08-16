class TermsController < ApplicationController
  
  def edit
    @term = Term.find(params[:id])
  end

  def update
    @term = Term.find(params[:id])
    @term.update(term_params)
    redirect_to dashboard_path(current_user)
  end

  private 

  def term_params
    params.require(:term).permit(:content)
  end
end
