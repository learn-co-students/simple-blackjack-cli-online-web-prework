def welcome
  "Welcome to the Blackjack Table"
end

def deal_card
  puts rand (1..11)
  return
end

def display_card_total
  cards = 1
  while cards <= 6
  puts "You now have #{cards} "
  break if cards == 4
  cards += 1
puts "Your cards add up to #{cards}."
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  answer = gets.chomp
end

def get_user_input
  puts "Please type your name"
  name = gets
  puts "your name is #{name}!"
end

def end_game
  cards = 1
  while cards <= 6
  puts "You now have #{cards} "
  break if cards == 4
  cards += 1
puts "Sorry, you hit #{cards}. Thanks for playing!"
end

def initial_round
   deal_card
  deal_card
  display_card_total
  deal_card
  display_card_total
end

def hit?
  prompt_user
  get_user_input
  deal_card
  invalid_command
  prompt_user
end

def invalid_command
    puts "please enter a valid command"
    
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  prompt_user
  hit?
  prompt_user
end_game
  
end
    
