def welcome
  puts "Welcome to the Blackjack Table"
end
def deal_card
  puts "rand(1..11)"
end

def display_card_total
  puts "Your cards add up to #{deal_card}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  puts prompt_user
  answer = gets.chomp
end

  # code #get_user_input here

def end_game(deal_card)
  if hit? > 21
    puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
  else
    puts hit?
  end
  # code #end_game here
end

def initial_round
  puts deal_card
  # code #initial_round here
end

def hit?
  prompt_user
  get_user_input
  if answer == "s"
    puts "deal_card"
  elsif answer == "h"
    puts "display_card_total + deal_card"
  else
    puts invalid_command
    puts prompt_user
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?
  until hit? == end_game
    puts "prompt_user"

end
