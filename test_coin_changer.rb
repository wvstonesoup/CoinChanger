#coin changer kata. write a function that takes a number of cents, and that returns a hash the least number of coins needed to generate the value of cents. eg if you have 11 cents you should return {:dime => 1, :penny =?1}; if you have 31 cents you should return {:quarter =>1, :nickel =>1, :penny => 1}
#build up your coin_changer using tests. commit to git after every test

require "minitest/autorun"
require_relative "coin_changer_func.rb"

class TestCoinChanger < Minitest::Test

	def test_ret_no_coins
		cents_received = 0
		assert_equal({}, coins_in_change(cents_received))
	end

	def test_one_penny_is_one_cent
		cents_received = 1
		assert_equal({:penny => 1}, coins_in_change(cents_received))
	end
end