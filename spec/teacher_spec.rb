require_relative '../library/teacher'
require_relative '../library/person'

describe Teacher do
  context 'When testing the tacher class' do
    before(:each) do
      @teacher = Teacher.new(45, 'Biology', 'Eloge')
    end

    it 'Take age, speccialization and name of a teacher' do
      expect(@teacher.age).to eq 45
      expect(@teacher.name).to eq 'Eloge'
      expect(@teacher.specialization).to eq 'Biology'
    end

    it 'Should return true when we call the can_use_services? method' do
      teacher = Teacher.new(35, 'specialization', 'John')
      response = teacher.can_use_services?
      expect(response).to be true
    end

    it 'Should create an instance of Person when creating a Teacher' do
      teacher = Teacher.new('specialization', 55, 'Marcos')
      expect(teacher).to be_a Person
    end
  end
end