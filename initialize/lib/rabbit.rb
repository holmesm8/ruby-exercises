class Rabbit
  attr_reader :name

  def initialize(hash)
    @name = hash[:name]
    @num_syllables = hash[:num_syllables]
  end


end
