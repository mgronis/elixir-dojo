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

  test "input is 10 should return X" do
    assert doConvert(10) == "X"
  end

  test "input is 11 should return XI" do
    assert doConvert(11) == "XI"
  end

  test "input is 12 should return XII" do
    assert doConvert(12) == "XII"
  end

  test "input is 13 should return XIII" do
    assert doConvert(13) == "XIII"
  end

  test "input is 14 should return XIV" do
    assert doConvert(14) == "XIV"
  end

  test "input is 15 should return XV" do
    assert doConvert(15) == "XV"
  end

  test "input is 16 should return XVI" do
    assert doConvert(16) == "XVI"
  end

  test "input is 19 should return XIX" do
    assert doConvert(19) == "XIX"
  end

  test "input is 20 should return XX" do
    assert doConvert(20) == "XX"
  end

  test "input is 39 should return XXXIX" do
    assert doConvert(39) == "XXXIX"
  end

  test "input is 40 should return XL" do
    assert doConvert(40) == "XL"
  end

  test "input is 41 should return XLI" do
    assert doConvert(41) == "XLI"
  end

  test "input is 44 should return XLIV" do
    assert doConvert(44) == "XLIV"
  end

  test "input is 45 should return XLV" do
    assert doConvert(45) == "XLV"
  end

  test "input is 49 should return XLIX" do
    assert doConvert(49) == "XLIX"
  end

  test "input is 50 should return L" do
    assert doConvert(50) == "L"
  end

end
