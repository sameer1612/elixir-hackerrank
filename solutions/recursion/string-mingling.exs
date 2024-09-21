# https://www.hackerrank.com/challenges/string-mingling/problem

defmodule Solution do
  def run do
    p = IO.gets("") |> String.trim()
    q = IO.gets("") |> String.trim()

    Enum.zip(String.graphemes(p), String.graphemes(q))
    |> Enum.flat_map(fn t -> Tuple.to_list(t) end)
    |> Enum.join()
    |> IO.puts()
  end
end

Solution.run()
