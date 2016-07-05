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

  test "correct pair of parenthesis" do
    assert balance("()") == true
  end

  test "correct double pair of parenthesis" do
    assert balance("()()") == true
  end

  test "inverted pair of parenthesis" do
    assert balance(")(") == false
  end

  test "nested pairs of parenthesis" do
    assert balance("(())") == true
  end

  test "incorrect input" do
    assert balance("a") == false
  end

end
