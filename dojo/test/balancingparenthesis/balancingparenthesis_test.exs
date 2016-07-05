defmodule BalancingParenthesisTest do
  use ExUnit.Case
  import BalancingParenthesis

  test "empty string" do
    assert balance("") == true
  end

end
