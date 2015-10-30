defmodule Bowling do

  def calculate(frames) do
    # Enum.reduce(frames, 0, fn({a, b}, acc) -> (a + b + acc) end)
    Enum.reduce(frames, 0, &addScore(&1, &2))
  end

  defp addScore(frame, acc) do
    case frame do
      {a, b} -> a + b + acc
      {a, b, c} -> a + b + c + acc
      _ -> raise "Holy moly!! Your are cheating, that is not a bowling score...."
    end
  end

end
