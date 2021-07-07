def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card 
  rand(11) +1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   c1 = deal_card
   c2 = deal_card
   
   card_total = c1 + c2
   display_card_total (card_total)
   return card_total
  
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
   if input == 'h'
     card_total+=deal_card
  elsif input =='s'
      return card_total
    else
      invalid_command(card_total)
    end
end

def invalid_command(card_total)
  # code invalid_command here
  puts "Please enter a valid command"
  #prompt_user
  return card_total
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  r1=initial_round
  until r1>21 do
    r1=hit?(r1)
    display_card_total(r1)
  end
  end_game(r1)
end 
    
