defmodule BowlingTest do
  use ExUnit.Case
  import Bowling

  test "calculate two frames with only gutter rolls" do
    assert calculate([{'-', '-'}, {'-', '-'}]) == 0
  end

  test "calculate two frames with second rolls in the gutter" do
    assert calculate([{1, '-'}, {1, '-'}]) == 2
  end

  test "calculate two frames with first rolls in the gutter" do
    assert calculate([{'-', 1}, {'-', 1}]) == 2
  end

  test "calculate two frames with combination of first and second rolls in the gutter" do
    assert calculate([{'-', 1}, {1, '-'}]) == 2
  end

  test "calculate two frames no strike/spare" do
     assert calculate([{1,1}, {2,4}]) == 8
  end

  # test "calculate two frames of which last is three rolls no strike/spare" do
  #    assert calculate([{1,1}, {2,4,3}]) == 11
  # end

  test "calculate two frames one spare and no strike" do
    assert calculate([{5, '/'}, {3, 4}]) == 20
  end

  test "calculate three frames two spares and no strike" do
    assert calculate([{5, '/'}, {5, '/'}, {3, 4}]) == 35
  end

  test "calculate two frames one strike and no spare" do
    assert calculate([{'x', '-'}, {3, 4}]) == 24
  end

  test "calculate two frames one strike and one spare" do
    assert calculate([{'x', '-'}, {3, '/'}]) == 30
  end

  test "calculate three frames two strikes and no spare" do
    assert calculate([{'x', '-'}, {'x', '-'}, {3, 4}]) == 47
  end

  test "calculate two frames one spare and one strike" do
    assert calculate([{5, '/'}, {'x', '-'}]) == 30
  end

  test "calculate two frames one spare with first roll in the gutter and non spare/strike with first roll in the gutter" do
    assert calculate([{'-', '/'}, {'-', 2}]) == 12
  end

end
