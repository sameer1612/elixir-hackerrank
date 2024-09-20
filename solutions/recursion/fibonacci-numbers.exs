# https://www.hackerrank.com/challenges/functional-programming-warmups-in-recursion---fibonacci-numbers/problem

defmodule Solution do
  defp nth_fibonacci(1), do: 0
  defp nth_fibonacci(2), do: 1
  defp nth_fibonacci(n), do: nth_fibonacci(n - 1) + nth_fibonacci(n - 2)

  def run do
    n =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()

    IO.puts(nth_fibonacci(n))
  end
end

Solution.run()
