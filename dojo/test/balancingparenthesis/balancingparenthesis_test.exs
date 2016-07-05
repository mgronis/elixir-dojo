defmodule BalancingParenthesisTest do
  use ExUnit.Case
  import BalancingParenthesis

  test "empty string" do
    assert balance("") == true
  end

  test "opening parentesis" do
    assert balance("(") == false
  end

  test "closing parentesis" do
    assert balance(")") == false
  end

end
