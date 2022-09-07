class TermPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    true
  end

  def create?
    true
  end


  def destroy? 
    user == user
  end

  def edit?
    user == user
  end

  def update?
    user == user
  end 
end
