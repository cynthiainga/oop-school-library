require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'create_persons'
require_relative 'create_rental'
require_relative 'create_books'
require_relative 'classroom'
require_relative 'teacher'
require_relative 'student'
require_relative 'person'
require_relative 'rental'
require_relative 'book'
require_relative 'list'

class App
  def initialize
    @books = []
    @persons = []
    @rentals = []
    @list = List.new
  end

  def list_all_books
    @list.display_books_list(@books)
  end

  def list_all_persons
    @list.display_persons_list(@persons)
  end

  def create_a_book
    @books << CreateBook.new.create_a_book
  end

  def create_a_student
    @persons << CreatePerson.new.create_a_student
  end

  def create_a_teacher
    @persons << CreatePerson.new.create_a_teacher
  end

  def create_a_person
    @persons << CreatePerson.new.create_a_person
  end

  def create_a_rental
    @rentals << CreateRental.new.create_a_rental(@books, @persons)
  end

  def list_rental_person
    @list.display_rentals_list(@persons, @rentals)
  end
end
