defmodule ElixirBenchmarkTests.TypeCheckerWithConds do
  def check(variable) do
    cond do
      is_integer(variable) == true -> {:ok, "You give us an integer"}
      is_binary(variable) == true -> {:ok, "You give us a binary"}
      is_float(variable) == true -> {:ok, "You give us a float"}
      is_tuple(variable) == true -> {:ok, "You give us a tuple"}
      is_list(variable) == true -> {:ok, "You give us a list"}
      is_atom(variable) == true -> {:ok, "You give us an atom"}
    end
  end
end
