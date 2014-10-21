#I didn't get my degree in Comp Sci, yet, so I'm not sure how to describe the complexity 
#in terms of big O and degrees though I think it would be big O n2 as it's two levels deep in
#complexity. I don't know how I would demonstrate Behavior driven testing, I'm using Cucumber
#with a client now but haven't gotten in deep yet as to how to validate the test. 


def square_root(i)
	Math.sqrt(i)
end
def generate_primes
	primes = []
	n = 2
	while primes.length < 10
		is_a_prime = true
		for prime in primes
			if n % prime == 0
				is_a_prime = false
				break
			end
		end
		if is_a_prime
			primes << n
		end
		n += 1
	end
	primes
end

def display_primes
	p = generate_primes
	puts "\n"
	print " ".rjust(9, padst=' ')
	for prime in p
		print prime.to_s.rjust(7, padst=' ')
	end
	print "\n"
	print (" " * 9) + ("_" * 70)
	print "\n"
	for row_prime in p
		print row_prime.to_s.rjust(7, padst=' ')," |"
		for multiplier in p
			print (row_prime * multiplier).to_s.rjust(7, padst=' ')
		end
	print "\n"
	end
	puts "\n"
end
display_primes