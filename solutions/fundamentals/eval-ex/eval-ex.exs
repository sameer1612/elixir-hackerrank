# https://www.hackerrank.com/challenges/eval-ex/problem

defmodule CustomModule do
  def ex(num) do
    0..9
    |> Enum.map(fn n -> nth_term(n, num) end)
    |> Enum.sum()
    |> Float.round(4)
  end

  defp nth_term(n, num) do
    :math.pow(num, n) / factorial(n)
  end

  defp factorial(0) do
    1
  end

  defp factorial(num) do
    1..trunc(num)
    |> Enum.reduce(1, fn t, acc -> t * acc end)
  end
end

defmodule Solution do
  def run do
    File.read("solutions/eval-ex/input.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.drop(1)
    |> Enum.map(&String.to_float/1)
    |> Enum.map(&CustomModule.ex/1)
    |> Enum.join("\n")
    |> IO.puts()
  end
end

Solution.run()
