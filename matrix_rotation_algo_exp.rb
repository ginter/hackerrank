require 'minitest/autorun'

def f i, j, rotations, rows=2, cols=2
  (i + rotations) / cols % rows - (j + rotations) / rows % cols
end

class TestCase < MiniTest::Test
  def test_works
    assert_equal f(0, 0, 1), 0
    assert_equal f(0, 0, 2), 1
    assert_equal f(0, 0, 3), 1
    assert_equal f(0, 0, 4), 0
    assert_equal f(0, 1, 1), 1
    # 1 2
    # 3 4
  end
end
