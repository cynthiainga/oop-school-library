require_relative 'library/capitalize_decorator'
require_relative 'library/trimmer_decorator'
require_relative 'library/create_persons'
require_relative 'library/create_rental'
require_relative 'library/create_books'
require_relative 'library/classroom'
require_relative 'library/load_data'
require_relative 'library/teacher'
require_relative 'library/student'
require_relative 'library/person'
require_relative 'library/rental'
require_relative 'library/book'
require_relative 'library/list'

class App
  attr_accessor :books, :persons, :rentals

  def initialize
    initialize_files
    @books = load_books
    @persons = load_persons
    @rentals = load_rentals(@books, @persons)
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
