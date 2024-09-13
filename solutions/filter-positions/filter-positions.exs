# https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem

defmodule Solution do
  File.read("solutions/filter-positions/filter-positions.txt")
  |> elem(1)
  |> String.split("\n", trim: true)
  |> Enum.map(&String.to_integer/1)
  |> Enum.drop_every(2)
  |> Enum.join("\n")
  |> IO.puts()
end
