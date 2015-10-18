defmodule RomannumeralTest do
  use ExUnit.Case
  import Romannumeral

  test "input is 1 sould return I" do
    assert convert(1) == "I" 
  end

end
