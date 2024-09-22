#  https://www.hackerrank.com/challenges/string-compression/problem

defmodule Solution do
  def compress(str) do
    str
    |> String.graphemes()
    |> Enum.chunk_by(& &1)
    |> Enum.map(fn ar ->
      if length(ar) > 1, do: hd(ar) <> Integer.to_string(length(ar)), else: hd(ar)
    end)
    |> Enum.join()
  end

  def run do
    IO.gets("")
    |> String.trim()
    |> compress()
    |> IO.puts()
  end
end

Solution.run()
