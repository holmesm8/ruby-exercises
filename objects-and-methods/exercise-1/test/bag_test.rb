gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bag'
require_relative '../lib/candy'

class BagTest < Minitest::Test
  def test_a_new_bag_is_empty
    bag = Bag.new
    assert Bag.new.empty?
  end

  def test_count_the_candies_in_an_empty_bag
    bag = Bag.new
    assert_equal 0, Bag.new.count
  end

  def test_empty_bag_has_no_candies
    bag = Bag.new
    assert_equal [], Bag.new.candies
  end

  def test_put_candy_in_the_bag
    bag = Bag.new
    candy = Candy.new("Sour frogs")
    bag.add_candy(candy)
    assert_equal [candy], bag.candies
  end

  def test_a_bag_with_candies_is_not_empty
    bag = Bag.new
    nerds = Candy.new("Nerds")
    bag.add_candy(nerds)
    refute bag.empty?
  end

  def test_bag_counts_candies
    bag = Bag.new
    candy = Candy.new("Caramelized Almonds")
    bag.add_candy(candy)
    assert_equal 1, bag.count
  end

  def test_bag_contains_candies_and_candies_have_a_type
    bag = Bag.new
    candy = Candy.new("Hershey's Kisses")
    bag.add_candy(candy)
    # You usually don't want to chain a bunch of different
    # types of things together like this.
    # We'll talk about it more in a few weeks.
    # It's important to understand how these methods work, though.
    type = bag.candies.first.type
    assert_equal "Hershey's Kisses", type
  end

  def test_ask_bag_if_it_contains_a_particular_type_of_candy
    bag = Bag.new
    candy = Candy.new("Lindt chocolate")
    bag.add_candy(candy)
    assert bag.contains?("Lindt chocolate")
    refute bag.contains?("Hershey's chocolate")
  end
end
