def is_prime(num)
	if num == 1 #ran into issue where 1 was creating an infinite loop so added conditional to check
		puts "1 is weird!"
	else
		check_num = 2 #prime is divisible only by 1 and itself, so init check_num as 2
		until num % check_num == 0 || num == check_num
			check_num += 1
		end

		puts check_num == num ? "#{ num } is prime" : "#{ num } is not prime"
	end
end

def all_factors(num) #except self
	count = num/2 + 1
	fact_array = []

	1.upto(count) do |i|
		if num % i == 0
			first_factor = i
			second_factor = num / i
			if fact_array.include?(first_factor) || fact_array.include?(second_factor)
				break
			else
				fact_array.push first_factor
				fact_array.push second_factor
			end

			puts first_factor
			puts second_factor
		end
	end

	fact_array.each { |value| is_prime(value)}
end

all_factors(600851475143)

