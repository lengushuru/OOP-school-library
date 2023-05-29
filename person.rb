require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(name, age, parent_permission: true)
    super()
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age.to_i >= 18
  end

  def generate_id
    rand(1000..9999)
  end
end
