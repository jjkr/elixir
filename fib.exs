defmodule Math do
  def fib(n) when n < 2, do: n
  def fib(n), do: fib(n-1) + fib(n-2)
end

IO.puts Math.fib(0)
IO.puts Math.fib(8)

IO.puts Enum.map([1, 2, 3, 4, 5, 6, 7], &Math.fib(&1))
