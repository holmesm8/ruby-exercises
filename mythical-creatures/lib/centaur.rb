class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @sleep = false
    @rested = false
    @sick = false
    @actions = 0
  end

  def shoot
    if @actions < 3 && @laying == false
      @actions += 1
      return "Twang!!!"
    else
      return "NO!"
    end
  end

  def run
    if @actions < 3 && @laying == false
      @actions += 1
      return "Clop clop clop clop!!!"
    else
      return "NO!"
    end
  end

  def cranky?
    if @actions < 3
      @cranky = false
      return @cranky
    else
      @cranky = true
      return @cranky
    end
  end

  def stand_up
    if @laying == true
      @standing = true
      @laying = false
    else
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @laying == true
      @sleep = true
      @actions = 0
      @cranky = false
    else
      "NO!"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def drink_potion
    if @standing == true && @rested == false
      @rested = true
    else @standing == true && @rested == true
      @sick = true
    end
  end

end
