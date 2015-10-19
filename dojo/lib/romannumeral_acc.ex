defmodule RomannumeralAcc do

  def doConvert(input) when is_number input do
    convert(input, [])
  end

  def doConvert(_) do
    raise "input is not a number"
  end

  defp convert(0, acc) do
    Enum.reverse(acc) |> to_string
  end

  defp convert(4, acc), do: convert(0, ["IV"|acc])

  defp convert(input, acc) when input >= 5 do
    convert(input-5, ["V"|acc])
  end

  defp convert(input, acc) do
    convert(input-1, ["I"|acc])
  end

end
