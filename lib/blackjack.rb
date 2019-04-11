
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num = (deal_card + deal_card)
  display_card_total(num)
  num
end

def hit?(num)
  # code hit? here
  prompt_user
  reply = get_user_input
  if reply == 'h'
    num += deal_card
  elsif reply == 's' 
    num
  else 
    invalid_command
  end
   num
end

def invalid_command
  # code invalid_command here
    puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  num = initial_round
  #display_card_total(num)
    until num > 21
      num = hit?(num) 
      display_card_total(num)
  end    
  end_game(num)
end  
    
