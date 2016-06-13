def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
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
  a=deal_card
  b=deal_card
  sum = a+b
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  while user_input!="s"&&user_input!="h"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    number = deal_card + number
  end
  #display_card_total(number)
  return number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  prompt_user
  user_input = get_user_input
  loop do
    while user_input!="s"&&user_input!="h"
      invalid_command
      prompt_user
      user_input = get_user_input
    end

    if user_input == "h"
      number = deal_card + number
    end
    break if number >21

    prompt_user
    user_input = get_user_input
  end
  display_card_total(number)
  end_game(number)
end
