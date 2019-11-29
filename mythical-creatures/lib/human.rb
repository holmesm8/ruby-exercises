class Human
  attr_reader :name, :encounter_counter

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
  end

  def encounter
    @encounter_counter += 1
  end


end
