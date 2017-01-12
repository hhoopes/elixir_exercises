fizz_buzz = fn
	[0, 0, _] -> "FizzBuzz"
	[0, _, _] ->  "Fizz"
	[_, 0, _] ->  "Buzz"
	[_, _, third] -> Integer.to_string(third)
end 

IO.puts fizz_buzz.([1, 2, 3)]
IO.puts fizz_buzz.([11, 12,3)]
IO.puts fizz_buzz.([3, 56, 1036)]

