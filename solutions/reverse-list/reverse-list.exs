# https://www.hackerrank.com/challenges/fp-reverse-a-list/problem

defmodule Solution do
  def main do
    File.read("solutions/reverse-list/input.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
    |> reverse()
    |> Enum.join("\n")
    |> IO.puts()
  end

  def reverse(items) do
    reverse(items, [])
  end

  defp reverse([h | t], acc) do
    reverse(t, [h | acc])
  end

  defp reverse([], acc) do
    acc
  end
end

Solution.main()
