class Ghostbuster

  def initialize(name)
    @name = name
    @car = "ECTO-1"
  end

  def say_my_name
    puts "I'm #{@name}"
  end

  def get_car(car)
    @car = "ECTO-1"
  end

  def ride
    "#{@car}"
  end
end

ghostbuster = Ghostbuster.new("Ray")
ghostbuster.say_my_name
puts ghostbuster.ride
