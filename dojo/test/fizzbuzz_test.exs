defmodule FizzBuzzTest do
  use ExUnit.Case
  import FizzBuzz

  test "input is 1 should return 1" do
    assert go(1) == 1
  end
end
