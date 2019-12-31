class Retirement

  def calculate(current_age, retirement_age)
    if (current_age || retirement_age) < 0
      "Error. Age cannot be negative."
    else
      calc = retirement_age - current_age
      year = 2015 + calc
      "You have #{calc} years left until you can retire. It is 2015, so you can retire in #{year}."
    end
  end
end
