def welcome
  puts "Welcome to the Blackjack Table."
end

def deal_card
  rand(1..11)
end

def display_card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay."
end

def get_user_input
  gets.chomp.strip
end

def end_game
  puts "Sorry, you hit the #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card + deal_card = card_total
  display_card_total(card_total)
  return card_total
end

def hit?
  prompt_user(get_user_input)
  if s
    display_card_total
  elsif h
    deal_card
  else
    invalid_command
end

def invalid_command
  puts "Please enter a valid command."
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
