def welcome
  puts "Hi, Welcome to the Blackjack Table!"
end

def deal_card
  deal_card = 1..11
end

def display_card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input
  get_user_input = gets
end

def end_game
end_game = 0
until end_game == 21
  puts "Sorry! you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
end

def hit?
  hit? = card_total
end

def invalid_command do
  if input is neither "h" nor "s"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
