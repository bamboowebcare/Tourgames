class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :super_admin
      can :manage, :all
    elsif user.role? :product_admin
      can :manage, [cycling_teams, Asset, Issue]
    elsif user.role? :product_team
      can :read, [cycling_teams, Asset]
      # manage products, assets he owns
      can :manage, cycling_teams do |cycling_teams|
        product.try(:owner) == user
      end
      can :manage, Asset do |asset|
        asset.assetable.try(:owner) == user
      end
    end
  end
end
