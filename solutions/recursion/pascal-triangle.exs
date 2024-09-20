# https://www.hackerrank.com/challenges/pascals-triangle/problem

defmodule Solution do
  defp factorial(0), do: 1

  defp factorial(num) do
    1..num
    |> Enum.reduce(1, fn t, acc -> t * acc end)
  end

  def value_at(n, r) do
    div(factorial(n), factorial(r) * factorial(n - r))
  end

  def run do
    k = IO.gets("") |> String.trim() |> String.to_integer()

    for n <- 0..(k - 1) do
      for r <- 0..n, do: IO.write("#{value_at(n, r)} ")
      IO.puts("")
    end
  end
end

Solution.run()
