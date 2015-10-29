defmodule BowlingTest do
use ExUnit.Case
import Bowling

  test "calculate two frames no strike/spare" do
     calculate [{1,1}, {2,4}] == 8
  end

end
