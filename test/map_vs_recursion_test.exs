defmodule MapVsRecursion do
  use ExUnit.Case, async: true
  require Benchmark

  test "upcase with recursion" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.UpcaseWithRecursion.upcase(["foo", "bar", "baz"])
    end
    IO.inspect { :upcase_with_recursion, average, total }
  end

  test "upcase with tail recursion" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.UpcaseWithRecursion.tail_upcase(["foo", "bar", "baz"])
    end
    IO.inspect { :upcase_with_tail_recursion, average, total }
  end

  test "upcase with map" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.UpcaseWithMap.upcase(["foo", "bar", "baz"])
    end
    IO.inspect { :upcase_with_map, average, total }
  end

end
