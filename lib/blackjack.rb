def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
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
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  ran1 = deal_card
  ran2 = deal_card
  total = ran1 + ran2
  display_card_total(total)
  total


  # code #initial_round here
end


def hit?(total)


  prompt_user
  choice = get_user_input
  until choice == "h"  || choice == "s"
    invalid_command
    prompt_user
    choice = get_user_input
  end


    if  choice == "h"
      total = total + deal_card

    else choice =="s"
      return total
  end
  total

end

def invalid_command
  choice = get_user_input
  until choice = "h" || choice ="s"
    puts "Please enter a valid command"
    hit?(total)
  end
  # code invalid_command here

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)

  end
  end_game(card_total)
  # code runner here
end
