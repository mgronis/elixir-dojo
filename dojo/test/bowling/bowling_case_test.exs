defmodule BowlingCaseTest do
  use ExUnit.Case
  import BowlingCase

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

  test "calculate two frames double spare with first roll in the gutter" do
    assert calculate([{'-', '/'}, {'-', '/'}]) == 20
  end

  test "calculate two frames of which last is three possible rolls no strike/spare" do
     assert calculate([{1, 1}, {2, 4, '-'}]) == 8
  end

  test "calculate two frames of which last is three possible rolls three strikes" do
     assert calculate([{1, 1}, {'x', 'x', 'x'}]) == 32
  end

  test "calculate two frames of which last is three possible rolls one strike and one spare" do
     assert calculate([{1, 1}, {'x', 5, '/'}]) == 22
  end

  test "calculate two frames of which last is three possible rolls one spare and one strike" do
     assert calculate([{1, 3}, {7, '/', 'x'}]) == 24
  end

  test "calculate two frames of which last is three possible rolls one spare followd by strike" do
     assert calculate([{1, 3}, {'-', '/', 'x'}]) == 24
  end

  test "calculate two frames of which last is three possible rolls one spare followd by gutter roll" do
     assert calculate([{1, 3}, {'-', '/', '-'}]) == 14
  end

  test "calculate two frames of which last is three possible rolls one spare followd by regular roll" do
     assert calculate([{1, 3}, {'-', '/', 5}]) == 19
  end

  test "calculate two frames of which last is three possible rolls two strikes followd by gutter roll" do
     assert calculate([{1, 3}, {'x', 'x', '-'}]) == 24
  end

  test "calculate two frames of which last is three possible rolls two strikes followd by regular roll" do
     assert calculate([{1, 3}, {'x', 'x', 6}]) == 30
  end

  test "entire series of only strikes" do
     assert calculate([{'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', '-'}, {'x', 'x', 'x'}]) == 300
  end

end
