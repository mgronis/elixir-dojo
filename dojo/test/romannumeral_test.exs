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

  test "input is 3 should return III" do
    assert doConvert(3) == "III"
  end

  test "input is 4 should return IV" do
    assert doConvert(4) == "IV"
  end
  # 
  # test "input is 5 should return V" do
  #   assert doConvert(5) == "V"
  # end

end
