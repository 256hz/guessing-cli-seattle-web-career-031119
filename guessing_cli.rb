require 'pry'

def run_guessing_game
  command = ''
<<<<<<< HEAD
  answer_list = ["1","2","3","4","5","6"]
  puts "Guess a number between 1 and 6."
  while
    command = gets.chomp
    random_answer = Random.rand(1..6).to_s
=======
  answers = [*1..6]
  answer_list = []
  answers.each {|value| answer_list << value.to_s}
  puts "Guess a number between 1 and 6."
  while command != "exit" do
    random_answer = Random.rand(1..6)
    command = gets.chomp

>>>>>>> 5fca67acb094f2596069e30401b5726bcc3e8154
    case
      when command == "exit"
        puts "Goodbye!"
        break
      when answer_list.include?(command)
<<<<<<< HEAD
        if command == random_answer
          puts "You guessed the correct number!"
        else
          puts "The computer guessed #{random_answer}."
=======
        if command == random_answer.to_s
          binding.pry
          puts "You guessed the correct number!"
        else
          puts "The computer guessed 5."
>>>>>>> 5fca67acb094f2596069e30401b5726bcc3e8154
        end
      else
        puts "Invalid input."
    end
  end
end