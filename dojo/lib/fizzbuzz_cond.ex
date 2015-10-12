defmodule FizzBuzzCond do

  def go(input) do
    cond do
      rem(input, 15) == 0 ->
        "fizzbuzz"
      rem(input, 3) == 0 ->
        "fizz"
      rem(input, 5) == 0 ->
        "buzz"
      true ->
        input
    end
  end

end
