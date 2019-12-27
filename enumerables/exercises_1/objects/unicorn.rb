class Unicorn
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def pink?
    @color == 'pink'
  end
end
