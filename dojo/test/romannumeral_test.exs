defmodule RomannumeralTest do
  use ExUnit.Case
  import Romannumeral

  test "input is string should raise" do
    assert_raise RuntimeError, fn -> doConvert("1") end
  end

  test "input is 1 should return I" do
    assert doConvert(1) == "I"
  end

  test "input is 2 should return II" do
    assert doConvert(2) == "II"
  end

end
