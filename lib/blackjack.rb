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

def end_game(x)
puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
sum=deal_card+deal_card
display_card_total(sum)
return sum
puts "Your cards add up to #{sum}"
end

def hit?(x)
  prompt_user
  input=get_user_input
   if input=="s"
     return x
  elsif input=="h"
    x+=deal_card
  else
    invalid_command
end
end


def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
  x=initial_round
  until x > 21
  x = hit?(x)

     display_card_total(x)

   end
  end_game(x)
end	
