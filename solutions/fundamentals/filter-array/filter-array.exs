# https://www.hackerrank.com/challenges/fp-filter-array/problem

defmodule CustomFilter do
  @moduledoc """
  Implement a filter function in Elixir.
  """

  @doc """
  Filter a list of items based on a condition function.

  The condition function should take a single argument and return a boolean.
  """
  def filter(items, cond) do
    filter(items, cond, [])
  end

  defp filter([], _cond, acc) do
    Enum.reverse(acc)
  end

  defp filter([head | tail], cond, acc) do
    filter(tail, cond, if(cond.(head), do: [head | acc], else: acc))
  end
end

defmodule Solution do
  input =
    File.read("solutions/filter-array/filter-array.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)

  [delimiter | nums] = input

  nums
  |> CustomFilter.filter(fn num -> num < delimiter end)
  |> Enum.join("\n")
  |> IO.puts()
end
