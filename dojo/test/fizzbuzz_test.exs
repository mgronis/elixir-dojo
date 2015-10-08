defmodule FizzBuzzTest do
  use ExUnit.Case
  import FizzBuzz

  test "input is 1 should return 1" do
    assert go(1) == 1
  end

  test "input is 2 should return 2" do
    assert go(2) == 2
  end

  test "input is 3 should return fizz" do
    assert go(3) == "fizz"
  end

  test "input is 4 should return 4" do
    assert go(4) == 4
  end

  test "input is 5 should return buzz" do
    assert go(5) == "buzz"
  end

  test "input is 6 should return fizz" do
    assert go(6) == "fizz"
  end

  test "input is 7 should return 7" do
    assert go(7) == 7
  end

  test "input is 8 should return 8" do
    assert go(8) == 8
  end

  test "input is 9 should return fizz" do
    assert go(9) == "fizz"
  end

  test "input is 10 should return buzz" do
    assert go(10) == "buzz"
  end
end
