def welcome
  puts "welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total
  puts "your card add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  get.chomp.strip
  # code #get_user_input here
end

def end_game
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  round_one = deal_card + deal_card
  display_card_total(round_one)
  return round_one
  # code #initial_round here
end

def hit?
  prompt_user
  user_input = get_user_input
  if user_input = "hi"
    card_total += deal_card
  elsif user_input == "s"
    card_total
  # code hit? here
end

def invalid_command
  puts "Sorry, not a valid command"
  get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
