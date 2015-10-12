defmodule FizzBuzzCaseTest do
  use ExUnit.Case
  import FizzBuzzCase

  test "inpus is 1 should return 1" do
    assert go(1) == 1
  end

end
