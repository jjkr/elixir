defmodule MyEnum do
  def all?([], _), do: true
  def all?([head | tail], predicate) do
    if !predicate.(head) do
      false
    else
      all?(tail, predicate)
    end
  end

  def each([], _), do: :ok
  def each([head | tail], f) do
    f.(head)
    each(tail, f)
  end

  def filter([], _), do: []
  def filter([head | tail], _), do: :ok
end
