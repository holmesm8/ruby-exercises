class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @meal_count = 0
  end

  def hungry?
    if @meal_count <= 2
      true
    else
      false
    end
  end

  def eat
    @meal_count += 1
  end



end
