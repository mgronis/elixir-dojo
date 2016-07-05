defmodule BalancingParenthesis do

    def balance("") do
      true
    end

    def balance("(") do
      false
    end

    def balance(")") do
      false
    end

end
