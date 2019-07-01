def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand = Random.new
  rand(11)+1
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  two_cards = deal_card + deal_card
  display_card_total(two_cards)
  two_cards
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    #do nothing, just stay
  else
    invalid_command
    hit?(total)
  end
  total
end

def invalid_command
  puts "Invalid command, please try again"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
