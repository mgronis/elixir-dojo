defmodule Bowling do

  def calculate(frames) do
    acc = Enum.reverse(frames) |> Enum.reduce {{0, 0}, {0, 0}, 0}, &addScore(&1, &2)
    extractResult(acc)
  end

  defp addScore({'x', '-'}=frame, {peek1, peek2, acc}) do; {frame, peek1, strikeScore(peek1, peek2, acc)} end
  defp addScore({_, _}=frame, {peek1, peek2, acc}) do
    case frame do
      {a, '/'} -> {{a, '/'}, peek1, spareScore(peek1, acc)}
      {'-', '-'} -> {{0, 0}, peek1, acc}
      {a, '-'} -> {{a, 0}, peek1, a + acc}
      {'-', b} -> {{0, b}, peek1, b + acc}
      {a, b} -> {{a, b}, peek1, a + b + acc}
    end
  end

  defp addScore({_, _, _}=frame, {peek1, peek2, acc}) do
    case frame do
      {'x', 'x', 'x'} -> {{'x', '-'}, {'x', '-'}, 30 + acc}
      {'x', 'x', '-'} -> {{'x', '-'}, {'x', '-'}, 20 + acc}
      {'x', 'x', c} -> {{'x', '-'}, {'x', '-'}, 20 + c + acc}
      {'x', b, '/'} -> {{'x', '-'}, {b, '/'}, 20 + acc}
      {a, '/', 'x'} -> {{a, '/'}, {'x', '-'}, 20 + acc}
      {a, '/', '-'} -> {{a, '/'}, {'-', '-'}, 10 + acc}
      {a, '/', c} -> {{a, '/'}, {c, '-'}, 10 + c + acc}
      {a, b, '-'} -> {{a, b}, peek1, a + b + acc}
    end
  end

  defp strikeScore({'x', '-'}, {'x', '-'}, acc) do; 30 + acc end
  defp strikeScore({'x', '-'}, {a, _}, acc) do; 20 + a + acc end
  defp strikeScore({a, '/'}, _, acc) do; 20 + acc end
  defp strikeScore({a, b}, _, acc) do; 10 + a + b + acc end

  defp spareScore({'x', _}, acc) do; 20 + acc end
  defp spareScore({'-', '/'}, acc) do; 10 + acc end
  defp spareScore({a, '/'}, acc) do; 10 + a + acc end
  defp spareScore({'-', _}, acc) do; 10 + acc end
  defp spareScore({a, _}, acc) do; 10 + a + acc end

  defp extractResult({_, _, acc}) do; acc end

end
