class TrickOrTreater
  attr_reader :costume, :bag

  def initialize(costume)
    @costume = costume
    @bag = []
  end

  def dressed_up_as
    @costume.style
  end

  def empty?
    true if @bag.count == 0
  end

  def has_candy?
    true if @bag.count > 1
  end

  def candy_count
    require "pry"; binding.pry
    @bag.count
  end
end
