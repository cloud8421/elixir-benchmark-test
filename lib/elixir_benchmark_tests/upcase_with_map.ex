defmodule ElixirBenchmarkTests.UpcaseWithMap do

  def upcase(list) do
    Enum.map list, &String.upcase/1
  end

end
