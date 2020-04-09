require("minitest/autorun")
require('minitest/reporters')
require_relative("../card_game")
require_relative("../card")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def initialize()
    @ace_hearts = Card.new('suit'=>'Hearts', 'value' =>1)
    @two_spades = Card.new('suit'=>'Spades', 'value' =>2)
    @cards = [@ace_hearts, @two_spades]
  end

  def test_card_equals_one()
    assert_equal(true, Cards.check_for_ace(@ace_hearts))
  end

  def test_check_for_ace_doesnt_equals_one()
    assert_equal(false, Cards.check_for_ace(@two_spades))
  end

  def test_highest_card_card1_greater_then_card2()
    assert_equal(true, Cards.highest_card(@two_spades, @ace_hearts))
  end

  def test_highest_card_card2_greater_then_card1()
    assert_equal(true, Cards.highest_card(@ace_hearts, @two_spades))
  end

  def test_cards_total_where_total_is_three()
    assert_equal(3, Cards.card_total(@cards))
  end

end
