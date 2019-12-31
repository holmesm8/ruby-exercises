class Madlib

  @noun = nil
  @verb = nil
  @adjective = nil
  @adverb = nil

  def noun(object)
    @noun = object
  end

  def verb(action)
    @verb = action
  end

  def adjective(adj)
    @adjective = adj
  end

  def adverb(av)
    @adverb = av
  end

  def result
    "Do you #{@verb} your #{@adjective} #{@noun} #{@adverb}? That's hilarious!"
  end
end
