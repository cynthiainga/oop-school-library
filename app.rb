require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'classroom'
require_relative 'teacher'
require_relative 'student'
require_relative 'person'
require_relative 'rental'
require_relative 'book'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
  end

  def list_all_books
    @books
  end

  def list_all_persons
    @persons
  end

  def create_a_teacher(name, age, specialization)
    @persons.push(Teacher.new(age, specialization, name, parent_permission: true))
  end
end