defmodule RomannumeralAccTest do
  use ExUnit.Case
  import RomannumeralAcc

  test "input string should rais" do
    assert_raise RuntimeError, fn -> doConvert("1") end
  end

  test "input 1 should return I" do
    assert doConvert(1) == "I"
  end

  test "input 2 should return II" do
    assert doConvert(2) == "II"
  end

  test "input 3 should return III" do
    assert doConvert(3) == "III"
  end

  test "input 4 should return IV" do
    assert doConvert(4) == "IV"
  end

  test "input 5 should return V" do
    assert doConvert(5) == "V"
  end

  test "input 6 should return VI" do
    assert doConvert(6) == "VI"
  end

  test "input 9 should return IX" do
    assert doConvert(9) == "IX"
  end

  test "input 10 should return X" do
    assert doConvert(10) == "X"
  end

  test "input 11 should return XI" do
    assert doConvert(11) == "XI"
  end

end
