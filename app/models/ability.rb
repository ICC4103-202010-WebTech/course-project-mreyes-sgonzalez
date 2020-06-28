class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.present?
      can :manage, :profile, customer_id:user.id
      can :read, :all
      # Admin users should be able to manage all
      if user.admin.present?
        can :manage, :all
      end
    end
  end
end
