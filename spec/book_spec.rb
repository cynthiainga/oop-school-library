require_relative '../library/book'
require_relative '../library/rental'

describe 'Book' do
  before(:each) do
    @book = Book.new('Vahana MasterClass', 'Alfredo Covelli')
  end

  it 'Should take only the title and the author' do
    expect(@book.author).to eq 'Alfredo Covelli'
    expect(@book.author).not_to eq 'Alfred Covelli'
    expect(@book.title).to eq 'Vahana MasterClass'
    expect(@book.rentals).to eq []
  end

  it 'Should create a new book and take the title and the author' do
    my_book = Book.new('Right Under Our Nose', 'R.Giridharan')
    expect(my_book.title).to eql 'Right Under Our Nose'
    expect(my_book.author).to eql 'R.Giridharan'
    expect(my_book.author).not_to eql 'R. Giridharan'
  end

  it 'Should return the number of books rented when added rentals' do
    rent_book = Book.new('Unfinished', '	Priyanka Chopra Jonas')
    rent_book.add_rental('2022-05-18', Person.new(25, 'Arthur'))
    rent_book.add_rental('2022-04-18', Person.new(25, 'Arthur'))
    rent_book.add_rental('2022-03-18', Person.new(24, 'Arthur'))
    expect(rent_book.rentals.length).to be 3
  end
end
