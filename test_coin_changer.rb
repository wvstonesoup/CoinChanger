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

	# def test_one_dime_is_ten_cents
	# 	cents_received = 10
	# 	assert_equal({:dime => 1}, coins_in_change(cents_received))
	# end

		# def test_one_quarter_is_25_cents
	# 	cents_received = 25
	# 	assert_equal({:quarter => 1}, coins_in_change(cents_received))
	# end

end