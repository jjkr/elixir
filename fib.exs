defmodule Math do
  def fib(n) when n < 2, do: n
  def fib(n), do: do_fib(0, 1, n)

  defp do_fib(_, cur, 1), do: cur
  defp do_fib(prev, cur, count) do
    do_fib(cur, prev+cur, count-1)
  end

  def bad_fib(n) when n < 2, do: n
  def bad_fib(n), do: bad_fib(n-2) + bad_fib(n-1)

  def fast_fib(n) do
    phi = (1 + :math.sqrt(5)) / 2
    round Float.floor(:math.pow(phi, n) / :math.sqrt(5))
  end
end

#IO.puts Math.fib(10000)
#IO.puts Math.fast_fib(100)
#IO.puts Math.bad_fib(100)
#0..20 |> Stream.map(&Math.fib/1) |> Enum.map(&Integer.to_char_list/1) |> IO.puts
