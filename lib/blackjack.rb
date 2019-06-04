def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_sum = 0
  for card in 1..2
    card_sum += deal_card
  end
  display_card_total(card_sum)
  card_sum
end

def hit?(number_input)
  # code hit? here
  prompt_user
  hit_or_stay = get_user_input
  new_card_total = number_input
  case hit_or_stay
  when "h"
    #deal_card
    new_card_total += deal_card
  when "s"
    #nothing
  else invalid_command
  end
new_card_total
end

def invalid_command
  # code invalid_command here
  "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
until card_sum > 21
  new_value = hit?(card_sum)
  card_sum = new_value
  display_card_total(card_sum)
end
end_game(card_sum)
end
