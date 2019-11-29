class Werewolf
  attr_reader :name, :location, :hungry, :human_form, :wolf_form, :victim_number

  def initialize(name, location = "")
    @name = name
    @location = location
    @hungry = false
    @human_form = true
    @wolf_form = false
    @victim_number = 0

  end

  def human?
    @human_form
  end

  def wolf?
    @wolf_form
  end

  def change!
    @human_form = !@human_form
    @wolf_form = !@wolf_form
    @hungry = !@hungry
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    if @wolf_form == true && @hungry == true
    @victim_number += 1
    @hungry = false
    else @victim_number
    end
  end

end
