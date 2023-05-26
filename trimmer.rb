require_relative 'decorator_base'

class TrimmerDecorator < NameDecorator
  def correct_name
    @nameable.correct_name[0...10]
  end
end
