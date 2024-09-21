# https://www.hackerrank.com/challenges/string-o-permute/problem

defmodule Solution do
  def swap(str) do
    String.graphemes(str)
    |> Enum.chunk_every(2)
    |> Enum.flat_map(fn t -> Enum.reverse(t) end)
    |> Enum.join()
  end

  def run do
    IO.read(:all)
    |> String.split("\n", trim: true)
    |> Enum.drop(1)
    |> Enum.map(&swap/1)
    |> Enum.join("\n")
    |> IO.puts()
  end
end

Solution.run()
