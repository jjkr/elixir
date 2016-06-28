defmodule MyList do
  def sum([a]), do: a
  def sum([total, head | tail]), do: sum([total + head | tail])

  def mapsum(l, f), do: l |> Enum.map(f) |> Enum.reduce(&(&1 + &2))

  def max([a, b]) when a < b, do: b
  def max([a, _]), do: a
  def max([max, head | tail]) when max > head, do: max([max | tail])
  def max([_, head | tail]), do: max([head | tail])

  def ceasar(s, rot) do
    [a] = 'a'
    s |> Enum.map(&(rem(&1 - a + rot, 26) + a))
  end

  def span(from, to), do: _span([], from, to)
  defp _span(list, to, to), do: list ++ [to]
  defp _span(list, count, to), do: _span(list ++ [count], count + 1, to)
end
