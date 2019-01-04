def deal_card
# this command chooses a random nunber between 1 and 11
    rand(1..11)
end

def display_card_total(card_total)
# displays "Your cards add up to 'card_total'"
  puts "Your cards add up to #{card_total}"
  card_total
end

def welcome
# displays greeting 
  puts "Welcome to the Blackjack Table"
end

def prompt_user
# displays hit or stay
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
# calls deal_card twice and assigns it as display_card_total(sum)
  sum = deal_card + deal_card
  display_card_total(sum)
end

def end_game(card_total)
# Displays game over message
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def get_user_input 
# get_user_input here
  gets.chomp
end

def hit? (card_total)
# when user chooses to hit another deal_card is called 
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
    card_total
end

def invalid_command
# invalid_command here
  puts "invalid"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
# runner runs the entire game for user 
  welcome  
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end