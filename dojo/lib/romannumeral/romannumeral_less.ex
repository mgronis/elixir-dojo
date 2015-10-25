defmodule RomannumeralLess do

  @prefixes [{5, "V"}, {4, "IV"}, {1, "I"}]

  def doConvert(input) when is_number input do
    convert(input, @prefixes, "")
  end

  def doConvert(input), do: raise "input is not a number"

  defp convert(0, _, acc), do: acc

  defp convert(input, prefixes = [{prefix, roman}|tail], acc) when input >= prefix do
    convert(input - prefix, prefixes, acc <> roman)
  end

  defp convert(input, [{_,_}|tail], acc) do
    convert(input, tail, acc)
  end

end
