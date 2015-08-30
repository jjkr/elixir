[1, 2, 3, 4] |> Enum.map(&(&1 + 2)) |> IO.puts
[1, 2, 3, 4] |> Enum.map(&IO.inspect/1) |> IO.puts
