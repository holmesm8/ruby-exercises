class Centaur
  attr_reader :name, :breed, :standing, :laying

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @laying = false
    @sleep = false
    @actions = 0

  end

  def refuse
    "NO!"
  end

  def lay_down
    @standing = !@standing
    @laying = !@laying
  end

  def stand_up
    if @laying == true
      @standing = !@standing
      @laying = !@laying
    else
    end
  end

  def laying?
    @laying
  end

  def shoot
    if (@cranky == false && @actions < 3) && @standing == true
      @actions += 1
      "Twang!!!"
    else refuse
    end
  end

  def run
    if (@cranky == false && @actions < 3) && @standing == true
    @actions += 1
    "Clop clop clop clop!!!"
  else refuse
    end
  end

  def cranky?
    if @actions >= 3 && @sleeping != true
      @cranky = !@cranky
    else @cranky
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing != true
      @sleep = true
      @cranky = !@cranky
    else refuse
    end
  end

end
