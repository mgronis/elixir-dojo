defmodule RomannumeralLess do

  def doConvert(input) when is_number input do
    convert(input)
  end

  def doConvert(input), do: raise "input is not a number"

  defp convert(0), do: ""
  defp convert(4), do: "IV"
  defp convert(9), do: "IX"
  defp convert(40), do: "XL"
  defp convert(90), do: "XC"

  defp convert(input) when input >= 91 do
    "XC" <> convert(input - 90)
  end

  defp convert(input) when input >= 50 do
    "L" <> convert(input - 50)
  end

  defp convert(input) when input >= 41 do
    "XL" <> convert(input - 40)
  end

  defp convert(input) when input >= 10 do
    "X" <> convert(input - 10)
  end

  defp convert(input) when input >= 5 do
    "V" <> convert(input - 5)
  end

  defp convert(input) do
    "I" <> convert(input - 1)
  end

end
