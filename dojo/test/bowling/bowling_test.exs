defmodule BowlingTest do
  use ExUnit.Case
  import Bowling

  test "calculate two frames no strike/spare" do
     assert calculate([{1,1}, {2,4}]) == 8
  end

  test "calculate two frames of which last is three rolls no strike/spare" do
     assert calculate([{1,1}, {2,4,3}]) == 11
  end

end
