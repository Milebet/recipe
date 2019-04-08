class ApplicationPolicy
  attr_reader :doctor, :record

  def initialize(doctor, record)
    @doctor = doctor
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :doctor, :scope

    def initialize(doctor, scope)
      @doctor = doctor
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
