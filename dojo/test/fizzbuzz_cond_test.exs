defmodule FizzBuzzCondTest do
  use ExUnit.Case
  import FizzBuzzCond

  test "input is 1 should return 1" do
    assert go(1) == 1
  end
  

end
