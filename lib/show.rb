class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_salary = 0
    @characters.each do |character|
      total_salary += character.salary
    end
    total_salary
  end

  def highest_paid_actor
    highest_paid = []
    @characters.max_by do |character|
      highest_paid << character.salary
    end
    highest_paid
  end

  def actors
    actors = []
    @characters.find_all do |character|
      actors << character.actor
    end
    actors
  end


end
