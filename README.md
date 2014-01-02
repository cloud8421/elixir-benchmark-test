# ElixirBenchmarkTests

This repository collects benchmark tests for Elixir. The idea is that given two or more possible implementations for a single task, we want to see which is more performant.

## Included tests

#### Type Checker

Pass in a variable, the function determines the type. Current implementations:

- Single function, using an internal `cond`. This is closer to a traditional if/else or switch/case implementation.
- Single public function, multiple private functions with a guard clause for each type.

#### Upcase a list

Given a list of words, upcase all of them. Current implementations:

- Using `map` on the list.
- Linear recursion on the list (i.e. where memory usage increases depending on the length of the list)
- Iterative recursion on the list (also called tail, where each function call doesn't need any other following one to be computed).

More info on that [here](http://learnyousomeerlang.com/recursion#hello-recursion).

## Setup

    mix deps.get

## Run

    mix test

## Want to help?

You can:

- provide alternative implementations
- suggest new test cases
- build a better test output - this is very rough
