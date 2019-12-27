gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NonePatternTest < Minitest::Test

  def test_none_are_broken
    things = ["functional", "working", "works", "fixed", "good"]
    none_broken = true
    things.each {|thing| none_broken = false if thing == "broken"}
    assert none_broken
  end

  def test_double_negative
    numbers = [9, 3, 3, 7, 6, -5, 1]
    not_none_negative = true
    numbers.each {|number| not_none_negative = false if number < 0}
    refute not_none_negative
  end

  def test_none_are_negative
    numbers = [9, 3, 1, 8, 3, 3, 5]
    none_negative = true
    numbers.each {|num| none_negative = false if num < 0}
    assert none_negative
  end

  def test_none_shall_pass
    critters = ["elf", "hobbit", "dwarf", "wizard", "human"]
    none_shall_pass = true
    critters.each do |critter|
      none_shall_pass = false if critter == "shall pass"
    end
    assert none_shall_pass
  end

  def test_one_or_more_shall_pass
    phrases = ["go", "left", "can cross", "shall pass", "must stay", "tarried"]
    none_shall_pass = true
    phrases.each {|critter| none_shall_pass = false if critter == "shall pass"}
    refute none_shall_pass
  end

  def test_none_even
    numbers = [3, 9, 15, 21, 19]
    none_even = true
    numbers.each {|num| none_even = false if num.even?}
    assert none_even
  end
end
