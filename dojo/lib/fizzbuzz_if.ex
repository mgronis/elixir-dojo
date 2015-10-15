defmodule FizzBuzzIf do

  def go(input) do
    if rem(input, 3) == 0 do
      "fizz"
    else
      if input == 5 do
        "buzz"
      else
        input
      end
    end
  end

end
