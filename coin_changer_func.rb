def coins_in_change(cents_received) 
 	coins = {}

 	money = {:half_dollar => 50, :quarter => 25, :dime => 10, :nickel => 5, :penny => 1}
 	money.each do |coin_type, coin_value|

 		if cents_received >= coin_value
  			coins[coin_type] = cents_received / coin_value
 			cents_received = cents_received % coin_value
 		end
 	end

 	# if cents_received >= money[:dime]
 	# 	coins[:dime] = cents_received / money[:dime]
 	# 	cents_received = cents_received % money[:dime]
 	# end

 	# if cents_received >= money[:nickel]
 	# 	coins[:nickel] = cents_received / money[:nickel]
 	# 	cents_received = cents_received % money[:nickel]
 	# end


 	# if cents_received >= money[:penny]
 	# 	coins[:penny] = cents_received / money[:penny]
 	# 	cents_received = cents_received % money[:penny]
 	# end
 	coins
end
 