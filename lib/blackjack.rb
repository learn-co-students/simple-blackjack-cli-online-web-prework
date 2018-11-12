def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.strip
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   input1 = deal_card
   input2 = deal_card
   display_card_total(input1 +input2)
   input1 + input2
end

def hit?(currentCardTotal)
  prompt_user
  input1 = get_user_input
  
  while ((input1 != 's') && (input1 != 'h')) do
    invalid_command
    prompt_user
    input1 = get_user_input
  end
  if input1 == 'h'
    currentCardTotal += deal_card
  else
    currentCardTotal
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
  
  until total > 21 do
    total= hit?(total)
    display_card_total(total)
  end
  
  end_game(total)
end  
          
  

    
