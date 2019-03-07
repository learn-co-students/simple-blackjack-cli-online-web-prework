def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  deal_card
  card1 = deal_card
  deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total (total)
  return total
end

def hit? (number)
  prompt_user
  input = get_user_input
  if input == 'h'
    new_total = deal_card
    return new_total + number
  elsif input == 's'
  return number
  else
  invalid_command
  prompt_user
  return number
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number=initial_round
  until number == 21
  hit?(number)
  end
end_game (number)
end
    
