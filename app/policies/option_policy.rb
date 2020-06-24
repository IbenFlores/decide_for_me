class OptionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def upvotes?
    true
  end
end
