defmodule ElixirBenchmarkTests.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_benchmark_tests,
      version: "0.0.1",
      elixir: "~> 0.12.0",
      deps: deps ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat.git" }
  defp deps do
    [
      { :benchmark, github: "cloud8421/elixir-benchmark" }
    ]
  end
end
