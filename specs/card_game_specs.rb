require("minitest/autorun")
require('minitest/reporters')
require_relative("../card_game")
require_relative("../card")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CardGameTest < MiniTest::Test

  def setup()
    @ace_hearts = Card.new('Hearts', 1)
    @two_spades = Card.new('Spades', 2)
    @three_diamonds = Card.new('Diamonds', 3)
    @cards = [@ace_hearts, @two_spades, @three_diamonds]
  end

  def test_card_equals_one()
    assert_equal(true, CardGame.check_for_ace(@ace_hearts))
  end

  def test_check_for_ace_doesnt_equals_one()
    assert_equal(false, CardGame.check_for_ace(@two_spades))
  end

  def test_highest_card_two_spades_greater_then_ace_hearts()
    assert_equal(@two_spades, CardGame.highest_card(@two_spades, @ace_hearts))
  end

  def test_highest_card_three_diamonds_greater_then_two_spades()
    assert_equal(@three_diamonds, CardGame.highest_card(@three_diamonds, @two_spades))
  end

  def test_cards_total_where_total_is_three()
    assert_equal("You have a total of 6", CardGame.cards_total(@cards))
  end

end
