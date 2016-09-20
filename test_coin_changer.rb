#coin changer kata. write a function that takes a number of cents, and that returns a hash the least number of coins needed to generate the value of cents. eg if you have 11 cents you should return {:dime => 1, :penny =?1}; if you have 31 cents you should return {:quarter =>1, :nickel =>1, :penny => 1}
#build up your coin_changer using tests. commit to git after every test

require "minitest/autorun"
require_relative "coin_changer_func.rb"


class TestCoinChanger < Minitest::Test 
 	def test_no_coins_in_hand_equals_empty_hash 
 		cents_received = 0 
 		assert_equal({}, coins_in_change(cents_received)) 
 	end 

 	def test_one_cent_equals_one_penny 
 		cents_received = 1 
 		assert_equal({:penny => 1}, coins_in_change(cents_received)) 
 	end 

	def test_two_penny_is_two_cents
		cents_received = 2
		assert_equal({:penny => 2}, coins_in_change(cents_received))
	end

	def test_one_nickel_is_five_cents
		cents_received = 5
		assert_equal({:nickel => 1}, coins_in_change(cents_received))
	end

	def test_6cents_is_one_nickel_plus_one_penny
		cents_received = 6
		assert_equal({:nickel => 1, :penny => 1}, coins_in_change(cents_received))
	end

	def test_one_dime_is_ten_cents
		cents_received = 10
		assert_equal({:dime => 1}, coins_in_change(cents_received))
	end

	def test_17cents_is_dime_plus_nickel_plus_two_pennies
		cents_received = 17
		assert_equal({:dime => 1, :nickel => 1, :penny => 2}, coins_in_change(cents_received))
	end

	def test_22cents_is_two_dimes_plus_two_pennies
		cents_received = 22
		assert_equal({:dime => 2, :penny =>2}, coins_in_change(cents_received))
	end 

	def test_one_quarter_is_25_cents
		cents_received = 25
		assert_equal({:quarter => 1}, coins_in_change(cents_received))
	end

	def test_41cents_equals_one_of_each_coin
		cents_received = 41
		assert_equal({:quarter =>1, :dime => 1, :nickel => 1, :penny =>1}, coins_in_change(cents_received))
	end

	def test_50cents_equals_one_half_dollar
		cents_received = 50
		assert_equal({:half_dollar => 1}, coins_in_change(cents_received))
	end

end