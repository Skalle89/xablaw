class ComputerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
