class Hobbit
  attr_reader :name, :disposition, :age

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return true if @age > 32
    false
    # if @age <= 32
    #   false
    # else
    #   true
    # end
  end

  def old?
    return true if @age >= 101
    false
    # if @age >= 101
    #   true
    # else
    #   false
    # end
  end

  def has_ring?
    return true if @name = "Frodo"
    false
    # if @name = "Frodo"
    #   true
    # else
    #   false
    # end
  end

  def is_short?
    true
  end

end
