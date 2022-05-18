require_relative '../library/teacher'
require_relative '../library/person'

describe Rental do
  context 'When testing the Rental class' do
    it 'The add_rental method returns a rental and adds its to the book' do
      book = Book.new('The Chrismas Pig', 'JK Rowling')
      person = Person.new(24, 'Grace')

      rentals = person.add_rental('2022-01-04', book)

      expect(person.rentals).to eql [rentals]
    end

    it 'Should return only one rental when adding a rental to a student and a book' do
      person = Student.new(12, 'Henry', parent_permission: true)
      book = Book.new('The Brench', 'Meghan Markle')
      Rental.new('2000/05/18', person, book)
      expect(person.rentals.length).to eq 1
      expect(book.rentals.length).to eq 1
    end
  end
end