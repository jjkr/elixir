fizz_string = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizz_buzz = fn(n) -> fizz_string.(rem(n, 3), rem(n, 5), n) |> IO.puts end

1..100 |> Enum.map(fizz_buzz)
