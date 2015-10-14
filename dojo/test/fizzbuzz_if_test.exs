defmodule FizzBuzzIfTest do
  use ExUnit.Case
  import FizzBuzzIf

  test "input is 1 should return 1" do
    assert go(1) == 1
  end

end
