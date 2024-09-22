#  https://www.hackerrank.com/challenges/string-compression/problem

defmodule Solution do
  def compress(str) do
    compress(str, "", 0, String.length(str))
  end

  defp compress(str, res, index, str_len) when index < str_len do
    ch = String.at(str, index)
    index2 = find_next_diff(str, ch, index + 1, str_len)

    count = index2 - index
    new_res = res <> ch <> if count == 1, do: "", else: Integer.to_string(count)

    compress(str, new_res, index2, str_len)
  end

  defp compress(_str, res, _index, _str_len), do: res

  defp find_next_diff(str, ch, index, str_len) when index < str_len do
    if String.at(str, index) == ch do
      find_next_diff(str, ch, index + 1, str_len)
    else
      index
    end
  end

  defp find_next_diff(_str, _ch, index, _str_len), do: index

  def run do
    IO.gets("")
    |> String.trim()
    |> compress()
    |> IO.puts()
  end
end

Solution.run()
