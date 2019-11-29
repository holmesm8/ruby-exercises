class Pirate
  attr_reader :name, :job, :heinous_acts_committed, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @heinous_acts_committed = 0
    @booty = 0
  end

  def cursed?
    return false if @heinous_acts_committed < 3
    true
  end

  def commit_heinous_act
    @heinous_acts_committed += 1
  end

  def robbing_ships
    @booty += 1
  end


end
