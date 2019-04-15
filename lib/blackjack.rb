def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
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

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  number_1=deal_card
  number_2=deal_card
  display_card_total(number_1+number_2)
  return number_1+number_2
end

def hit?(current_number)
  prompt_user
 decision= get_user_input
  until decision=="h" || decision=="s"
  
  invalid_command
  decision=get_user_input
  end
 
  if decision== "h"
    card_total=current_number+deal_card
  else decision== "s"
 
  
      current_number


end
  # code hit? here
end

def invalid_command
  # code invalid_command here
  
    puts "Please enter a valid command"
    prompt_user
  

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum=initial_round

  total_sum=hit?(sum)
  
  until total_sum>21
total_sum=hit?(total_sum)
end
display_card_total(total_sum)
    
    end_game(total_sum)
    end
