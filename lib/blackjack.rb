
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
   gets.chomp
end

def end_game(number)
  card_total = (number)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 card_total = deal_card + deal_card
 print  display_card_total(card_total)
 
  return card_total
end



def hit?(user_hand)
  prompt_user
  user_input = get_user_input

  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == 'h'
    new_card = deal_card
    user_hand += new_card
  elsif user_input == 's'
    user_hand
  end
  user_hand
end

def invalid_command
puts  "Please enter a valid command"
  
end 



def runner 
  welcome
  user_hand = initial_round
  card_total = user_hand

  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end_game(card_total)
end
 
end
    
