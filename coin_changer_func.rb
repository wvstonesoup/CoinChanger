

#coins = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}

def coins_in_change(cents_received) 
 	coins = {} 

 # 	if cents_received == 1 
	# 	coins[:penny] = cents_received 
 # 	end 

	# if cents_received == 2 
	# 	coins[:penny] = cents_received 
 # 	end  

 	if cents_received.between?(1,4)
 		coins[:penny] = cents_received
 	end

 	if cents_received == 5 
		coins[:nickel] = cents_received/5
 	end  	

 	if cents_received.between?(6,9)
 		coins[:nickel] = 1
 		coins[:penny] = cents_received - 5
 	end

 	if cents_received == 10 
		coins[:dime] = cents_received/10
	end

	if cents_received.between?(11,24)
		coins[:dime] = cents_received/10
		cents_received = cents_received % 10
		coins[:nickel] = cents_received/5
		cents_received = cents_received % 5
		coins[:penny] = cents_received
	end

	if cents_received == 25 
		coins[:quarter] = cents_received/25
	end

 	coins 

 end
 
 
 
 
