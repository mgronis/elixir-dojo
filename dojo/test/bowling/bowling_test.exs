defmodule BowlingTest do
  use ExUnit.Case
  import Bowling

  test "calculate two frames no strike/spare" do
     assert calculate([{1,1}, {2,4}]) == 8
  end

  # test "calculate two frames of which last is three rolls no strike/spare" do
  #    assert calculate([{1,1}, {2,4,3}]) == 11
  # end

  test "calculate two frames one spare and on strike" do
    assert calculate([{5, '/'}, {3, 4}]) == 20
  end

  test "calculate three frames two spares and no strike" do
    assert calculate([{5, '/'}, {5, '/'}, {3, 4}]) == 35
  end

end
