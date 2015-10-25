defmodule RomannumeralLess do

  @prefixes [[1, "I"]]

  def doConvert(input) when is_number input do
    convert(input, @prefixes, "")
  end

  def doConvert(input), do: raise "input is not a number"

  defp convert(0, _, acc), do: acc
  defp convert(4, _, acc), do: "IV"
  # defp convert(9), do: "IX"
  # defp convert(40), do: "XL"
  # defp convert(90), do: "XC"
  #
  # defp convert(input) when input >= 91 do
  #   "XC" <> convert(input - 90)
  # end
  #
  # defp convert(input) when input >= 50 do
  #   "L" <> convert(input - 50)
  # end
  #
  # defp convert(input) when input >= 41 do
  #   "XL" <> convert(input - 40)
  # end
  #
  # defp convert(input) when input >= 10 do
  #   "X" <> convert(input - 10)
  # end

  defp convert(input, prefixes, acc) when input >= 5 do
    convert(input - 5, prefixes, acc <> "V")
  end

  defp convert(input, prefixes = [[prefix, roman]], acc) when input >= prefix do
    convert(input - prefix, prefixes, acc <> roman)
  end

  # defp convert(input, [{_,_}|tail]) do
  #   convert(input, tail)
  # end

end
