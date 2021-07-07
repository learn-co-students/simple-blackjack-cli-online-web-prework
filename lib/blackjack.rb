def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total_card)
  puts "Your cards add up to #{total_card}"end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total_card)
  puts "Sorry, you hit #{total_card}. Thanks for playing!"
end

def initial_round
  first = deal_card + deal_card
  display_card_total(first)
  first
end

def hit?(total_card)
  prompt_user
  input = get_user_input
  until input == 'h' || input == 's'
    puts invalid_command
    prompt_user
    input = gets.chomp
  end
  if input == "h"
    total_card += deal_card
  elsif input == 's'
    total_card
  end
end

def invalid_command
  puts "Sorry, you hit #{total_card}. Thanks for playing!"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total_card = initial_round
  until total_card > 21
    total_card = hit?(total_card)
    display_card_total(total_card)
  end
  end_game(total_card)
end
