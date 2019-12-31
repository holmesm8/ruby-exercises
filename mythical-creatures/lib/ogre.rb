class Ogre
  attr_reader :name, :home, :human_hit
  attr_accessor :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @human_hit = 0
  end

  def encounter(human)
    human.encounter
    if human.notices_ogre?
      @swings += 1
    end
    if @swings % 2 == 0
      @human_hit += 1
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.knocked_out = false
  end
end


class Human
  attr_reader :name, :encounter_counter, :notices
  attr_accessor :knocked_out

  def initialize(name)
    @name = name
    @encounter_counter = 0
    @notices = false
    @knocked_out = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    if encounter_counter % 3 == 0
      @notices = true
    end
  end

  def knocked_out?
    if @encounter_counter % 2 == 0
     @knocked_out = true
   end
  end
end
