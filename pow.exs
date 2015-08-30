defmodule Math do
  def pow(0, 0), do: 1
  def pow(0, exp) where exp < 0, do: 0
  def pow(0, _), do: 0
  def pow(base, exp) do
  end
end
