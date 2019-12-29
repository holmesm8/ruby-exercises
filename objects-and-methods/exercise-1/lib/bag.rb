class Bag
  attr_reader :count, :candies

  def initialize
    @count = 0
    @candies = []
  end

  def add_candy(candy)
    @candies << candy
    @count += 1
  end

  def empty?
    true if @candies.length == 0
  end

  def contains?(type)
    @candies.find {|candy| candy.type == type}
  end
end
