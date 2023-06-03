require './person'
require './student'
require './teacher'
require './class_room'
require './book'
require './rental'
require './book_module'
require './person_module'
require './rental_module'

class App
  def initialize
    @people = []
    @rentals = []
    @books = []
    @classroom = Classroom.new('Grade 10')
  end

  include BookModule
  include PersonModule
  include RentalModule
end
