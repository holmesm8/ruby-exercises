class Thing
  attr_reader :adjective

  def initialize(adjective)
    @adjective = adjective
  end

  def weird?
    @adjective == 'weird'
  end
end
