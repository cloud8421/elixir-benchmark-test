defmodule ElixirBenchmarkTestsTest do
  use ExUnit.Case, async: true
  require Benchmark

  test "integer type check with cond" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithConds.check(1)
    end
    IO.inspect { :integer_with_conds, average, total }
  end

  test "integer type check with guards" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithGuards.check(1)
    end
    IO.inspect { :integer_with_guards, average, total }
  end

  test "float type check with cond" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithConds.check(1.123)
    end
    IO.inspect { :float_with_cond, average, total }
  end

  test "float type check with guards" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithGuards.check(1.123)
    end
    IO.inspect { :float_with_guard, average, total }
  end

  test "string type check with cond" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithConds.check("foo")
    end
    IO.inspect { :string_with_cond, average, total }
  end

  test "string type check with guards" do
    [_min, _max, average, total, _reps] = Benchmark.times 100000 do
      ElixirBenchmarkTests.TypeCheckerWithGuards.check("foo")
    end
    IO.inspect { :string_with_guard, average, total }
  end
end
