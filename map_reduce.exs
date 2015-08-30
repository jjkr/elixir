add = &(&1 + &2)
IO.puts(
  1..10 |> Enum.map &(&1 * &1) |> Enum.reduce add
  #  Enum.reduce((Enum.map 1..10, fn(x) -> x * x end),
  #    add)
)
#  |> Enum.reduce fn(x, acc) -> x + acc end
