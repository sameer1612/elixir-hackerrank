# https://www.hackerrank.com/challenges/fp-sum-of-odd-elements/problem

defmodule Solution do
  File.read("solutions/sum-of-odd-numbers/input.txt")
  |> elem(1)
  |> String.split("\n", trim: true)
  |> Enum.map(&String.to_integer/1)
  |> Enum.filter(fn num -> rem(num, 2) != 0 end)
  |> Enum.sum()
  |> IO.puts()
end
