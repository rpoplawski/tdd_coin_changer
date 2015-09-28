    assert_equal(99, coinage)
   end

 def test_returns_pennies
    changer = CoinChanger.new(99)
    coinage = changer.pennies
    assert_equal({pennies: 99}, coinage)
  end

  def test_returns_nickels
    changer = CoinChanger.new(99)
    coinage = changer.nickels
    assert_equal({nickels: 19}, coinage)
  end

  def test_returns_dimes
    changer = CoinChanger.new(99)
    coinage = changer.dimes
    assert_equal({dimes: 9}, coinage)
  end

  def test_returns_quarters
    changer = CoinChanger.new(99)
    coinage = changer.quarters
    assert_equal({quarters: 3}, coinage)
  end

   def test_coin_changer_returns_correct_change_multiple_coins
     changer = CoinChanger.new(43)
     coinage = changer.change
     coinage = changer.changer
     assert_equal({quarters: 1, dimes: 1, nickels: 1, pennies: 3}, coinage)
   end
