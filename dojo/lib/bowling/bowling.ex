defmodule Bowling do

  def calculate(frames) do
    acc = Enum.reverse(frames) |> Enum.reduce {{0, 0}, {0, 0}, 0}, &addScore(&1, &2)
    extractResult(acc)
  end

  defp addScore(frame, {peek1={p11, p12}, peek2={p21, p22}, acc}) do
    case frame do
      {a, '/'} -> {{a, '/'}, peek1, 10 + p11 + acc}
      {a, b} -> {{a, b}, peek1, a + b + acc}
      # {a, b, c} -> {{a, b, c}, peek1, a + b + c + acc}
      _ -> raise "Holy moly!! Your are cheating, that is not a bowling score...."
    end
  end

  defp extractResult({_, _, acc}) do
    acc
  end

end
