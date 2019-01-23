class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :checkout, :to => :checkout
    user ||= User.new
    can :read, :all
    if user.is_admin?
      can :manage, :all
    elsif user.is_artist?
      can :manage, Piece
      can :create, Category
    end
    unless user.nil?
      can :edit, User
      can :update, User
      can :create, User
    end
  end
end