require("minitest/autorun")
require('minitest/reporters')
require_relative("../card_game")
require_relative("../card")

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup()
    @ace_hearts = Card.new('suit'=>'Hearts', 'value' =>1)
    @two_spades = Card.new('suit'=>'Spades', 'value' =>2)
    @three_diamonds = Card.new('suit'=>'Diamonds', 'value'=>3)
    @cards = [@ace_hearts, @two_spades, @three_diamonds]
  end

  def test_card_equals_one()
    assert_equal(true, Cards.check_for_ace(@ace_hearts))
  end

  def test_check_for_ace_doesnt_equals_one()
    assert_equal(false, Cards.check_for_ace(@two_spades))
  end

  def test_highest_card_two_spades_greater_then_ace_hearts()
    assert_equal(@two_spades, Cards.highest_card(@two_spades, @ace_hearts))
  end

  def test_highest_card_three_diamonds_greater_then_two_spades()
    assert_equal(@three_diamonds, Cards.highest_card(@three_diamonds, @two_spades))
  end

  def test_cards_total_where_total_is_three()
    assert_equal("You have a total of 6", Cards.card_total(@cards))
  end

end
