class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    true if @candies.count == 0
  end

  def count
    @candies.count
  end

  def <<(candy)
    @candies << candy
  end

  def contains?(type)
    @candies.any? {|candy| candy.type == type}
  end

  def grab(type)
    Candy.new(type)
    @candies.shift
  end
end
