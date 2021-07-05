def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  return rand(1..11)# code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  input = gets.chomp# code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"# code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
  # code #initial_round here
end

def hit?(total)
  prompt_user
  user_hit = get_user_input
  if user_hit == "s"
  elsif user_hit == "h"
    total += deal_card
    display_card_total(total)
    if total > 21
    end_game(total)
  end
else
  invalid_command
  prompt_user
end
return total
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
  end
    # code runner here
end
