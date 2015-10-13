defmodule FizzBuzzCase do

  def go(input) do
    case divisibleBy(input, 3, 5) do
      {0, _} ->
        "fizz"
      {_, 0} ->
        "buzz"
      _ ->
        input
    end
  end

  defp divisibleBy(input, first, second) do
    { rem(input, first), rem(input, second) }
  end

end
