require './app'
require './actions'

class Main
  def initialize
    @app = App.new
    @actions = Actions.new
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop: disable Metrics/MethodLength
  def menu
    puts 'Welcome to School Library App!'
    loop do
      option = @actions.user_actions
      case option
      when '1'
        @app.list_all_books
      when '2'
        @app.list_all_people
      when '3'
        @app.create_person
      when '4'
        @app.create_book
      when '5'
        @app.create_rental
      when '6'
        @app.list_rentals
      when '7'
        puts 'Thank you for using our library ¯\^-^/¯'
        return
      else
        puts 'Please enter a number between 1 and 7'
      end
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
  # rubocop: enable Metrics/MethodLength
end

main = Main.new
main.menu


