# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 

    if user.role == 'admin'
      can :manage, :all
    else
      can :read, :all
      can :home, BooksController
      can :about_modal, Author
      can :review_modal, Book
    


      # Add additional permissions as needed
    end
  end
end
