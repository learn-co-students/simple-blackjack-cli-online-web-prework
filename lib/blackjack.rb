def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal_card = rand(1..11)
  return deal_card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  hit_stay = get_user_input

    if hit_stay == "h"
      card_total += deal_card
    elsif hit_stay == "s"
      card_total
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand  > 21 do
    hand = hit?(hand)
    display_card_total(hand)
  end
 end_game(hand)
end
