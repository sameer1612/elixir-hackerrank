# https://www.hackerrank.com/challenges/fp-list-length/problem

defmodule Solution do
  def find_length(arr) do
    find_length(arr, 0)
  end

  defp find_length([_h | t], len) do
    find_length(t, len + 1)
  end

  defp find_length([], len) do
    len
  end

  def run do
    File.read("solutions/list-length/input.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
    |> find_length()
    |> IO.puts()
  end
end

Solution.run()
