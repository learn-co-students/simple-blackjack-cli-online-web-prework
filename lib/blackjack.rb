def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
    card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  play = gets.chomp
end

def end_game(display_card_total)
  puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
end

def initial_round
  initial_deal = 0
  2.times do
    initial_deal += deal_card
  end
  puts "Your cards add up to #{initial_deal}"
  return initial_deal
end

def hit?(display_card_total)
  prompt_user
  value = get_user_input
  if value == "h"
    display_card_total += deal_card
  elsif value == "s"

  else
    invalid_command
end
  return display_card_total
end

def invalid_command(get_user_input)
  if get_user_input != "h" || "s" || "exit"
    puts "Please enter a valid command"
    prompt_user
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
end_game(card_total)
end
