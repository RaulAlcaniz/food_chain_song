require_relative 'animals_involved'

class Animal
  include AnimalsInvolved

  def initialize(iteration)
    name = ANIMALS[iteration]
  end

  def singer_opinion
    #error
  end

  def what_it_catches?
    #error
  end



  private

  attr_reader :name
end
