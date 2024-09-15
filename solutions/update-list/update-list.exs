# https://www.hackerrank.com/challenges/fp-update-list/problem

defmodule Solution do
  File.read("solutions/update-list/input.txt")
  |> elem(1)
  |> String.split("\n", trim: true)
  |> Enum.map(&String.to_integer/1)
  |> Enum.map(&abs/1)
  |> Enum.join("\n")
  |> IO.puts()
end
