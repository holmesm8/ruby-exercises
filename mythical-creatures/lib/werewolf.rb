# werewolf2 is the completed version of this class. this one focuses on strings

class Werewolf
  attr_reader :name, :location, :status, :hungry, :victims

  def initialize(name, location = "")
    @name = name
    @location = location
    @status = "human"
    @hungry = false
    @victims = 0

    # @human_form = true
    # @wolf_form = false
  end

  def human?
    if @status == "human"
      true
    else
      false
    end
  end

  def wolf?
    if @status == "wolf"
      true
    else
      false
    end
  end

  def change!
    if @status == "human"
      @status = "wolf"
      @hungry = true
    else @status == "wolf"
      @status = "human"
      @hungry = false
    end
  end

  def hungry?
    if @status == "wolf"
      @hungry = true
    end
  end

  def consume(victim)
    if @status == "wolf" && @hungry == true
      @victims += 1
    else @status == "human"
    end
  end




end
