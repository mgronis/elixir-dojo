defmodule Romannumeral do

  def doConvert(input) when is_number input do
    convert(input)
  end

  def doConvert(input) do
    raise "input is not a number"
  end

  defp convert(0) do
    ""
  end

  defp convert(4) do
    "IV"
  end
  
  defp convert(9) do
    "IX"
  end

  defp convert(input) when input >= 5 do
    "V" <> convert(input - 5)
  end

  defp convert(input) do
    "I" <> convert(input - 1)
  end

end
