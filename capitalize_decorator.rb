require_relative 'decorator_base'

class CapitalizeDecorator < NameDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
