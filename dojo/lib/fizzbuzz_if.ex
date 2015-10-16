defmodule FizzBuzzIf do

  def go(input) do
    if rem(input, 3) == 0 do
      "fizz"
    else
      if rem(input, 5) == 0 do
        "buzz"
      else
        input
      end
    end
  end

end
