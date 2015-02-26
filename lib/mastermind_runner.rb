require_relative 'mastermind_user_input'


#RUNNER

MasterMindPrinter.file = $stdout
user_input = MasterMindUserInput.new
user_input.user_input_upon_start_menu
