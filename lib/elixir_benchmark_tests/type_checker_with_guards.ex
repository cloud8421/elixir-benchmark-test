defmodule ElixirBenchmarkTests.TypeCheckerWithGuards do
  def check(variable) do
    do_check(variable)
  end

  defp do_check(variable), when: is_integer(variable), do: {:ok, "You give us an integer"}
  defp do_check(variable), when: is_binary(variable), do: {:ok, "You give us a binary"}
  defp do_check(variable), when: is_float(variable),   do: {:ok, "You give us a float"}
  defp do_check(variable), when: is_tuple(variable),   do: {:ok, "You give us a tuple"}
  defp do_check(variable), when: is_list(variable),    do: {:ok, "You give us a list"}
  defp do_check(variable), when: is_atom(variable),    do: {:ok, "You give us an atom"}
end
