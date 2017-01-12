
defmodule Sum do 
	def of(0), do: 0
	def of(n), do: n + of(n-1)
end

defmodule Gcd do
	def of(x, 0), do: x
	def of(0, y), do: y
	def of(x, y), do: of(y, rem(x,y))
end
