require_relative "blackjack.rb"
def runner
  welcome
  hand=initial_round
  until hand>21 do
    hand=hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
end