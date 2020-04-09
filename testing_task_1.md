### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # Should use snake case for ruby method (i.e. check_for_ace).
# def check_for_ace(card)

    if card.value = 1 # Should use double equals '=='. Using single equals will make car.value equal 1.
  # if card.value == 1

      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Should use 'def' instead of 'dif'
# def highest_card(card1, card2)

  if card1.value > card2.value
    return card # Should use 'card1' instead of 'card'
  # return card1

  else
    return card2
  end
end
end

def self.cards_total(cards)
  total # total should be allocated an initial value of zero when created.
  for card in cards
    total += card.value
    return "You have a total of" + total # should encompass in double quotes and use #{} for total
  # return "You have a total of #{total}"
  
  end
end
# there should be an 'end' for the end of the CardGame class definition
```
