class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned
    @statues << victim
    if @statues.count > 3
      @statues.shift
    end
  end
end
