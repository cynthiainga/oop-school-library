require_relative 'person'

class Student < Person
    attr_accessor :classroom

    def initialize(age, name = "Unknown", classroom, parent_permission: true)
        super(name, age, parent_permission: parent_permission)
        @classroom = Classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end