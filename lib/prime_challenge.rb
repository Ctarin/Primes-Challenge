#I didn't get my degree in Comp Sci, yet, so I'm not sure how to describe the complexity 
#in terms of big O and degrees though I think it would be big O n2 as it's two levels deep in
#complexity. I don't know how I would demonstrate Behavior driven testing, I'm using Cucumber
#with a client now but haven't gotten in deep yet as to how to validate the test, or doing so
#without rails. I've created an rspec test project, though I'm still learning testing and 
#didn't do any TDD as this was my first time doing unit tests.


module PrimeChallenge
#assuming we want n to be the number of primes found and p to be the primes themselves
	def self.generate_primes(n)
		primes = []
		p = 2
		while primes.length < n
			is_a_prime = true
			for prime in primes
				if p % prime == 0
					is_a_prime = false
					break
				end
			end
			if is_a_prime
				primes << p
			end
			p += 1
		end
		primes
	end

	def self.display_primes
		p = generate_primes(10)
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
end