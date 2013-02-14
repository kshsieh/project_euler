def FibSum(limit)
	fib_past = 1
	fib_now = 2
	sum = 0

	while fib_now < limit
		if fib_now % 2 == 0
			sum += fib_now
		end
		fib_now += fib_past
		fib_past = fib_now - fib_past
		if fib_now > limit
			break
		end
	end

	puts sum
end

FibSum(4000000)
