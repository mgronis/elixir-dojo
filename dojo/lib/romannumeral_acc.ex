defmodule RomannumeralAcc do

  def doConvert(input) when is_number input do
    convert(input, [])
  end

  def doConvert(_) do
    raise "input is not a number"
  end

  defp convert(0, acc) do
    acc
  end

  defp convert(input, acc) do
    convert(input-1, ["I"|acc])
  end

end
