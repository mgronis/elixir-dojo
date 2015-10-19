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

  test "input is 5 should return V" do
    assert doConvert(5) == "V"
  end

  test "input is 6 should return VI" do
    assert doConvert(6) == "VI"
  end

  test "input is 7 should return VII" do
    assert doConvert(7) == "VII"
  end

  test "input is 8 should return VIII" do
    assert doConvert(8) == "VIII"
  end

  test "input is 9 should return IX" do
    assert doConvert(9) == "IX"
  end

end
