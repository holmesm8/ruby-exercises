class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(command)
    "sudo #{command}"
  end

  def rested?
    return @rested if @spells_cast < 3
    false
  end

  def cast(spell)
    @spells_cast += 1
    spell.upcase
  end


end
