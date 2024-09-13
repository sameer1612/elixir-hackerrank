# https://www.hackerrank.com/challenges/fp-array-of-n-elements/problem

defmodule Solution do
  def main do
    num =
      IO.gets("")
      |> String.trim()
      |> String.to_integer()

    Enum.to_list(1..num)
    |> IO.inspect(limit: :infinity)
  end
end

Solution.main()
