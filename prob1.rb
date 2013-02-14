def FizzBuzzSum(goal_num)
	sum = 0
	current_num = 0
	while current_num < goal_num
		if current_num % 3 == 0 || current_num % 5 == 0
			sum += current_num
			current_num += 1
		else
			current_num += 1
		end
	end

	puts sum
end

FizzBuzzSum(1000)