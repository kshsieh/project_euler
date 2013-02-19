def is_palindrome(input)
	if input.is_a? String
		puts input == input.reverse ? puts("True") : puts("False")
	else
		input = input.to_s()
		puts input == input.reverse ? puts("True") : puts("False")
	end
end
