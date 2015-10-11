defmodule FizzBuzzGuardTest do
  use ExUnit.Case
  import FizzBuzzGuard

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

  test "input is 11 should return 11" do
    assert go(11) == 11
  end

  test "input is 12 should return fizz" do
    assert go(12) == "fizz"
  end

  test "input is 13 should return 13" do
    assert go(13) == 13
  end

  test "input is 14 should return 14" do
    assert go(14) == 14
  end

  test "input is 15 should return fizzbuzz" do
    assert go(15) == "fizzbuzz"
  end
end
