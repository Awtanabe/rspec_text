require 'pry-rails'

class Person
  attr_reader :age

  def initialize(age)
    @age = age
  end
  def auth_smoke?
    @age >= 20
  end
  def auth_drink?
    @age >= 20
  end

  def auth_vote?
    @age >= 20
  end
end