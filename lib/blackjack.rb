def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11) # code #deal_card here
end

def display_card_total(total)
puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user(phrase = "Type 'h' to hit or 's' to stay")
puts phrase  # code #prompt_user here
end

def get_user_input
gets.chomp  # code #get_user_input here
end

def end_game(total)
puts "Sorry, you hit #{total}. Thanks for playing!"
# code #end_game here
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
sum
end

def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
