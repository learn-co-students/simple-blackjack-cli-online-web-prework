def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(display_card_total)
 puts "Sorry, you hit #{display_card_total}. Thanks for playing!"
  #end_game here
end

def initial_round

   sum_total = deal_card + deal_card
   display_card_total(sum_total)

   return sum_total


end

def hit?(sum_total)
  prompt_user

  if get_user_input == 'h'
    deal_card + sum_total

  else
    sum_total
  end
end
# code hit? here

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
sum_total = deal_card + deal_card
  until sum_total > 21
    welcome
    initial_round
    hit?
    display_card_total
   if sum_total > 21
   end_game
 end
 end
 end
  # code runner here
