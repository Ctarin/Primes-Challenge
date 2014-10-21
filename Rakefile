require './lib/prime_challenge'

desc "Displays Primes"
task :display_primes do
	PrimeChallenge.display_primes
end

begin
	require 'rspec/core/rake_task'
	RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
