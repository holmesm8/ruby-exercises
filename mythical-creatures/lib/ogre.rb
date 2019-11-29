class Ogre
  attr_reader :name, :home, :encounter_counter, :swings, :human_hit

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @human_hit = 0

  end

  def encounter(human)
    human.encounter
    if human.notices_ogre?
      @swings += 1
      if @swings % 2 == 0
        @human_hit += 1
      end
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def hits
    if @swings % 2 == 0
      @human_hit += 1
    end
    @human_hit
  end

end


class Human
  attr_reader :name, :encounter_counter, :notice

  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notice = false

  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      @notice = true
    else
      false
    end
  end

  def knocked_out?

  end

end
