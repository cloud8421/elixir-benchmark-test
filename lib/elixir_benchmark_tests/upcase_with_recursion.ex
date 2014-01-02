defmodule ElixirBenchmarkTests.UpcaseWithRecursion do

  def upcase([]), do: []
  def upcase([head | tail]) do
    [ String.upcase(head) | upcase(tail) ]
  end

  def tail_upcase(word_list) do
    tail_upcase(word_list, [])
  end
  defp tail_upcase([], acc), do: acc |> Enum.reverse
  defp tail_upcase([element | tail], acc) do
    tail_upcase(tail, [ String.upcase(element) | acc ])
  end

end
