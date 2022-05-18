require_relative '../library/classroom'
require_relative '../library/student'
require_relative '../library/book'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Y1_Computer_Science')
  end

  it 'Take the classroom label name and Students' do
    expect(@classroom.label).to eq 'Y1_Computer_Science'
    expect(@classroom.students).to eq []
  end

  it 'Should return two student when adding a student' do
    danny = Student.new(24, 'Danny', parent_permission: true)
    nicolas = Student.new(14, 'Nicolas', parent_permission: false)
    @classroom.add_student(danny)
    @classroom.add_student(nicolas)
    expect(@classroom.students.length).to eql 2
  end

  it 'Should return only one student when adding the same student' do
    christian = Student.new(28, 'Christian', parent_permission: true)
    @classroom.add_student(christian)
    @classroom.add_student(christian)
    @classroom.add_student(christian)
    @classroom.add_student(christian)
    @classroom.add_student(christian)
    expect(@classroom.students.length).to eql 1
  end

  it 'Should return the classroom of student when adding students in the classroom' do
    lucas = Student.new(25, 'Lucas', parent_permission: true)
    @classroom.add_student(lucas)
    expect(lucas.classroom).to eq @classroom
  end
end