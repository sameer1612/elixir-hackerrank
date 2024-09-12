defmodule CustomFilter do
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
    File.read("filter-array.txt")
    |> elem(1)
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)

  [delimiter | nums] = input

  nums
  |> CustomFilter.filter(fn num -> num < delimiter end)
  |> Enum.join("\n")
  |> IO.puts()
end
