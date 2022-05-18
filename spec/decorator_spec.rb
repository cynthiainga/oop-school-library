require_relative '../library/capitalize_decorator'
require_relative '../library/trimmer_decorator'
require_relative '../library/person'

describe TrimmerDecorator do
  context 'When testing decorator classes' do
    it 'Should return a string capitalized' do
      person = Person.new(22, 'maximilianus')
      person.correct_name
      capitalized_person = CapitalizeDecorator.new(person)
      expect(capitalized_person.correct_name).to eq 'Maximilianus'
    end

    it 'Should return only the 10 characheres of the name' do
      person = Person.new(22, 'maximilianus')
      capitalized_trimmed_person = TrimmerDecorator.new(person)
      expect(capitalized_trimmed_person.correct_name).to eq 'maximilian'
    end
  end
end