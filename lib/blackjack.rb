def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
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

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
deal_card
current_card_total= deal_card
current_card_total+=deal_card
display_card_total (current_card_total)
return current_card_total
end

def hit? (current_card_value)
  prompt_user
  user_input = get_user_input
  if user_input== 'h'
    current_card_value+=deal_card
    elsif user_input== 's'
    current_card_value
  else
    invalid_command
  end
  return current_card_value
end
def invalid_command
  puts "Please enter a valid command"
end

def runner
 welcome
 number = initial_round
  until number > 21
  
  number = hit?(number)
  display_card_total(number)
  end
  end_game(number)
end