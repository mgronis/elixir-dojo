defmodule RomannumeralAcc do

  def doConvert(input) when is_number input do
    "I"
  end

  def doConvert(_) do
    raise "input is not a number"
  end

end
