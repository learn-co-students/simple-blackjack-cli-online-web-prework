def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
display_card_total = deal_card + deal_card
puts "Your cards add up to #{display_card_total}"
return display_card_total
  end

def hit?(card_total)
 prompt_user
 user = get_user_input
   if user == 'h'
     card_total += deal_card
   elsif user == 's'
     card_total
   else 
     invalid_command
     hit?(card_total)
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
  total = initial_round
  until total > 21 
  total = hit?(total)
  display_card_total(total)
  end
end_game(total)
end

    
