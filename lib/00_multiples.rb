# Objectif : Trouve la somme des entiers naturels strictement inférieurs à 1000 et qui sont multiples de 3 ou 5
# 

def is_multiple_of_3_or_5?(i)
	if i % 3 == 0 || i % 5 == 0
		answer = true
	else
		answer = false
	end
	return answer
end


def sum_of_3_or_5_multiples(n)
 sum = 0
 	if (n.is_a? Integer) && (n>0)

	 	for i in (0...n)
		
			if is_multiple_of_3_or_5?(i) == true
		 		sum += i
		 	else
		 	end
		 end
		return sum
	else 
		return "Yo ! Je ne prends que les entiers naturels."
	end
 end


# sum_of_3_or_5_multiples(11) #=> 33
# sum_of_3_or_5_multiples(10) #=> 23
# sum_of_3_or_5_multiples(1000) #=> 233168
# sum_of_3_or_5_multiples(2.3) #=> "Yo ! Je ne prends que les entiers naturels."
# sum_of_3_or_5_multiples("deux") #=> "Yo ! Je ne prends que les entiers naturels."
# sum_of_3_or_5_multiples(-1) #=> "Yo ! Je ne prends que les entiers naturels."
 