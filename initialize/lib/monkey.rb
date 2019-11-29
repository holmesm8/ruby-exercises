class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(array)
    @array = array
    @name = array[0]
    @type = array[1]
    @favorite_food = [2]
  end


end
