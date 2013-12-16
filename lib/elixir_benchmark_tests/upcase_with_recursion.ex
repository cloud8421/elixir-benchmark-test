defmodule ElixirBenchmarkTests.UpcaseWithRecursion do

  def upcase([]), do: []
  def upcase([head | tail]) do
    [ String.upcase(head) | upcase(tail) ]
  end

end
