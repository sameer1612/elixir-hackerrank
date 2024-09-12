defmodule Solution do
  input =
    File.read("list-replication.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)

  [count | nums] = input

  nums
  |> Enum.flat_map(fn num -> List.duplicate(num, count) end)
  |> Enum.join("\n")
  |> IO.puts()
end
