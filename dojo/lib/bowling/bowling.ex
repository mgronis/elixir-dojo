defmodule Bowling do

  def calculate(frames) do
    Enum.reduce(frames, 0, fn({a, b}, acc) -> (a + b + acc) end)
  end
end
