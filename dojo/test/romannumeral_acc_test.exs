defmodule RomannumeralAccTest do
  use ExUnit.Case
  import RomannumeralAcc

  test "input string should rais" do
    assert_raise RuntimeError, fn -> doConvert("1") end
  end

  test "input 1 should return I" do
    assert doConvert(1) == ["I"]
  end

end
