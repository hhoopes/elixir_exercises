defmodule AList do 
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do 
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func), do: 0
  def mapsum(list, func), do: _mapsum(list, 0, func)

  def _mapsum([], total, _func), do: total
  def _mapsum([head | tail], total, func) do
    func.(head) +  _mapsum(tail, total, func)
  end

  def max([]), do: 0
  def max(list), do: _max(list, 0)

  defp _max([], current_max), do: current_max
  defp _max([head | tail], current_max) when head > current_max, do: _max(tail, head)
  defp _max([_head | tail], current_max), do: _max(tail, current_max)

  def caesar([], _n), do: ''
  def caesar([head | tail], n) when head + n  > 122 do
    [Integer.mod(head + n, 122) + 96 | caesar(tail, n)]
  end
  def caesar([head | tail], n) do
    [head + n | caesar(tail, n)]
  end

  def span(from, to) when from == to, do: [from]
  def span(from, to) when from > to do
    span(to, from)
  end
  def span(from, to) do 
    [from | span(from + 1, to)]
  end 
end
