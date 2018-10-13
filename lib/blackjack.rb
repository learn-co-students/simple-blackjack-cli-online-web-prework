def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
    1 + rand(11)
    # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

#cartot = display_card_total

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  # code #get_user_input here
end

#card_total = initial_round

#def end_game(card_total)
 # puts "Sorry, You hit #{card_total}. Thanks for playing!"
 # code #end_game here
#end

def initial_round
  deal_card
  deal_card
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"# code #initial_round here
  sum
end

card_total = initial_round

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "s"
    card_total
  elsif input == "h"
    card_total = card_total + deal_card
    card_total
  else
    puts "Please enter a valid command"
    # code hit? here
  end
end

def invalid_command
  # code invalid_command here
end


def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
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
