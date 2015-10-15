defmodule FizzBuzzIf do

  def go(input) do
    if input == 3 or input == 6 do
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
