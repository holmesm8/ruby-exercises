class Centaur
  attr_reader :name, :breed, :cranky

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @action_counter = 0
    @rested = false
    @sick = false
  end

  def shoot
    @action_counter += 1
    cranky?
    if @action_counter > 2 || @laying == true
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @action_counter += 1
    cranky?
    if @cranky == true || @laying == true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @action_counter > 2
      @cranky = true
    else
      @cranky
    end
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @action_counter = 0
      @cranky = false
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == false
      "NO!"
    else
      @rested = true
    end
  end

  def rested?
    @rested
  end

  def sick?
    if @rested == true
      @sick = true
    else
      @sick
    end
  end
end
