class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def stoned
    @stoned = true
  end
end
