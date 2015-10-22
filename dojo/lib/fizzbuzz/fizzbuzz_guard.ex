defmodule FizzBuzzGuard do

  def go(input) when rem(input, 3) == 0 and rem(input, 5) == 0 do
    "fizzbuzz"
  end

  def go(input) when rem(input, 3)  == 0 do
    "fizz"
  end

  def go(input) when rem(input, 5) == 0 do
    "buzz"
  end

  def go(input) do
    input
  end

end
