equire 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/changer'

class ChangerTest < MiniTest::Test

  def test_changer_exists
    assert(Changer)
  end

  def test_run_works
    assert_respond_to(Changer, :run)
  end

  def test_returns_single_penny
    assert_equal([1], Changer.run(1))
  end

  def test_returns_multiple_pennies
    assert_equal([1, 1], Changer.run(2))
    assert_equal([1, 1, 1], Changer.run(3))
  end

  def test_returns_single_nickle
    assert_equal([5], Changer.run(5))
  end

  def test_returns_single_dime
    assert_equal([10], Changer.run(10))
  end

  def test_returns_multiple_dimes
    assert_equal([10, 10], Changer.run(20))
  end

  def test_returns_single_quarter
    assert_equal([25], Changer.run(25))
  end

  def test_returns_multiple_quarters
    assert_equal([25, 25], Changer.run(50))
  end

  def test_returns_multiple_coins
    assert_equal([10, 5], Changer.run(15))
    assert_equal([10, 10, 1, 1, 1, 1], Changer.run(24))
    assert_equal([25, 25, 25, 10, 10, 1, 1, 1, 1], Changer.run(99))
  end

end
