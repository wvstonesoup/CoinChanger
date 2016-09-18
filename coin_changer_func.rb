

#coins = {:quarter => 25, :dime => 10, :nickle => 5, :penny => 1}

def coins_in_change(cents_received) 
 	coins = {} 

 	if cents_received == 1 
		coins[:penny] = cents_received 
 	end 

	if cents_received == 2 
		coins[:penny] = cents_received 
 	end  

 	if cents_received == 5 
		coins[:nickel] = cents_received/5
 	end  	

 	if cents_received == 10 
		coins[:dime] = cents_received/10
	end

	if cents_received == 25 
		coins[:quarter] = cents_received/25
	end
	
 	coins 

 end
 
 
 
 
