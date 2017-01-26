defmodule AltEnum do
  def all?([], _func), do: true
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _func), do: IO.puts "Please provide a list"
  def each([head | tail], func) do
    func.(head) 
    each(tail, func) 
  end

  def filter([], _func), do: IO.puts "Please provide a list"
  def filter([head | tail], func) do
    if func.(head) do 
      [head | filter(tail, func)]
    else
      [filter(tail, func)]
    end 
  end 
  
  def split([], _), do: IO.puts "Please provide a list"
  def split(list, splitter), do: _split(list, splitter, [])

  defp _split([], _, front), do: {Enum.reverse(front), []}
  defp _split(tail, 0, front), do: {Enum.reverse(front), tail}
  defp _split([head | tail], splitter, front) do 
    _split(tail, splitter - 1, [head | front]) 
  end

  def take([], _), do: []
  def take(_, n) when n <= 0, do: []
  def take(list, n), do: _take(list, n, [])

  defp _take([], _, acc), do: Enum.reverse(acc)
  defp _take(_, 0, acc), do: Enum.reverse(acc)
  defp _take([head | tail], n, acc) do
     _take(tail, n - 1, [head | acc]) 
  end
end


