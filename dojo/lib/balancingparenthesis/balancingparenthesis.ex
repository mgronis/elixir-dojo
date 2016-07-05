defmodule BalancingParenthesis do

    def balance("") do
      true
    end

    def balance(input) do
      [h|tail] = String.codepoints(input)
      balance(h, tail, 0)
    end

    defp balance(_, _, acc) when acc < 0 do
      false
    end

    defp balance("(", [h|tail], acc) do
      balance(h, tail, acc + 1)
    end

    defp balance(")", [h|tail], acc) do
      balance(h, tail, acc - 1)
    end

    defp balance("(", [], _acc) do
      false
    end

    defp balance(")", [], acc) do
      acc == 1
    end

    defp balance(_, _, _) do
      false
    end

end
