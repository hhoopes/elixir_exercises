fizz_buzz = fn
	[0, 0, _] -> "FizzBuzz"
	[0, _, _] ->  "Fizz"
	[_, 0, _] ->  "Buzz"
	[_, _, third] -> Integer.to_string(third)
end 

div = fn(n) ->
	fizz_buzz.([rem(n,3), rem(n,5), n])
end 

IO.puts div.(10)
IO.puts div.(11)
IO.puts div.(12)
IO.puts div.(13)
IO.puts div.(14)
IO.puts div.(15)
IO.puts div.(16)
