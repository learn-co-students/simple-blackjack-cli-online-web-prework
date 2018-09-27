
def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total (cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 gets.chomp
end

def end_game (n)
 puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round 
  cardtotal = deal_card + deal_card
  display_card_total(cardtotal)
  return cardtotal
end

def hit? (cardtotal)
  prompt_user
  input = get_user_input
  if input == 'h'
    newtotal = deal_card + cardtotal
    return newtotal
  elsif input == 's'
    return cardtotal
  else puts "Please enter a valid command."
    invalid_command
  end
end

def invalid_command
 put "Please enter a valid command."
 prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner 
  welcome
  card_total =initial_round
  until card_total >21  do
      card_total = hit? (card_total) 
    display_card_total(card_total) 
  end
  end_game(card_total)
end
