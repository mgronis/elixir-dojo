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

  defp convert(input) do
    "I" <> convert(input - 1)
  end

end
