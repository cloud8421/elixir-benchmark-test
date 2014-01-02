defmodule ElixirBenchmarkTests.TypeCheckerWithGuards do
  def check(variable) do
    do_check(variable)
  end

  defp do_check(variable) when is_integer(variable) do
    {:ok, "You give us an integer"}
  end
  defp do_check(variable) when is_binary(variable) do
    {:ok, "You give us a binary"}
  end
  defp do_check(variable) when is_float(variable) do
    {:ok, "You give us a float"}
  end
  defp do_check(variable) when is_tuple(variable) do
    {:ok, "You give us a tuple"}
  end
  defp do_check(variable) when is_list(variable) do
    {:ok, "You give us a list"}
  end
  defp do_check(variable) when is_atom(variable) do
    {:ok, "You give us an atom"}
  end
end
