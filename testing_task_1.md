### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # Should use snake case for ruby method and self. declaration(i.e. self.check_for_ace).
# def self.check_for_ace(card)

    if card.value = 1 # Should use double equals '=='. Using single equals will make car.value equal 1.
  # if card.value == 1

      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Should use 'def self.highest_card(card1, card2)' instead of just 'dif'
# def self.highest_card(card1, card2)

  if card1.value > card2.value
    return card # Should use 'card1' instead of 'card'
  # return card1

  else
    return card2
  end
  #if statement should be indented more than def.
end
end # This should sit at the end of the code as the end of the class.

def self.cards_total(cards)
  total # total should be allocated an initial value of zero when created.
  for card in cards
    total += card.value
    return "You have a total of" + total # should encompass in double quotes and use #{} for total
  # return "You have a total of #{total}"
  # this return line should sit after the end of the for loop and before the end for the method.

  end
end
#the method should be indented more than the class (one more tab indent)
# there should be an 'end' for the end of the CardGame class definition
```
