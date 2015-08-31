@health_1 = 3

@health_2 = 3

@alive = true 

def game

	while @alive

		@first_number = rand(1..20)
		@second_number = rand(1..20)
		@answer = @first_number + @second_number

		puts "Player 1: What does #{@first_number} plus #{@second_number} equal?"
			
		hello = gets.chomp

		if hello.to_i == @answer
			puts "You got it right! You have #{@health_1} lives left."

		else 
			@health_1 -= 1

			if @health_1 == 0
				@alive = false
			else
				puts "You're answer is wrong. You have #{@health_1} lives left."
			end
		end

		first_number = rand(1..20)
		@second_number = rand(1..20)
		@answer = @first_number + @second_number

		puts "Player 2: What does #{@first_number} plus #{@second_number} equal?"
			hi = gets.chomp
			if hi.to_i == @answer
			puts "You got it right! You have #{@health_2} lives left."

		else 
			@health_2 -= 1

			if @health_2 == 0
				@alive = false
			else
				puts "You're answer is wrong. You have #{@health_2} lives left."
			end
		end	

end
end

game