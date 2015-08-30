# compute the sum of the first 10 squares
IO.puts(1..10 |> Enum.map(&(&1 * &1)) |> Enum.reduce(&(&1 + &2)))
