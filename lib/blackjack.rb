def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
end

def end_game(card)
  puts "Sorry, you hit 27. Thanks for playing!"
end

def initial_round
  first = deal_card
  second = deal_card
   card_total = first + second
  display_card_total(card_total)
  return card_total
end

def hit?(number = x)
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
