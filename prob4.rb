def is_palindrome(input)
	#if statement in case arg is an int
	if input.is_a? String
		input == input.reverse
	else
		input = input.to_s()
		input == input.reverse
	end
end


def prod_check(lower_limit_int, upper_limit_int, least_or_greatest)
	product_array = Array.new

	if least_or_greatest == 'least'
		start_num = lower_limit_int
		end_num = upper_limit_int
		test_num = lower_limit_int

		until start_num == end_num
			until test_num == end_num
				product = start_num * test_num
				# puts "The product of #{ start_num } and #{ test_num } is #{ product }"
				if is_palindrome(product) #returns true
					# puts "#{ product } is a palindrome!"
					product_array << product
					break
				else
					test_num += 1
				end
			end
			test_num = lower_limit_int
			start_num += 1
		end

	elsif least_or_greatest == 'greatest'
		start_num = upper_limit_int
		end_num = lower_limit_int
		test_num = upper_limit_int

		until start_num == end_num
			until test_num == end_num
				product = start_num * test_num
				# puts "The product of #{ start_num } and #{ test_num } is #{ product }"
				if is_palindrome(product) #returns true
					# puts "#{ product } is a palindrome!"
					product_array << product
					break
				else
					test_num -= 1
				end
			end
			test_num = upper_limit_int
			start_num -= 1
		end

	else
		puts "You need to specify least_or_greatest in the third argument"
	end

	puts product_array.sort!.last

end

prod_check(100, 999, 'greatest')