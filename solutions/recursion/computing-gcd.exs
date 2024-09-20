# https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---gcd/problem

defmodule Solution do
  def gcd(x, x), do: x
  def gcd(1, _), do: 1
  def gcd(_, 1), do: 1

  def gcd(x, y) do
    if x > y, do: gcd(x - y, y), else: gcd(y, x)
  end

  def run do
    [x, y] =
      IO.gets("")
      |> String.trim()
      |> String.split(" ", trim: true)
      |> Enum.map(&String.to_integer/1)

    IO.puts(gcd(x, y))
  end
end

Solution.run()
