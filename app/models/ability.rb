# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # Guest user (not logged in)

  
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :home, BooksController

      # Add additional permissions as needed
    end
  
  
  end
end
