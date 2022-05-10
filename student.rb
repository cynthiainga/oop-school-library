require_relative 'person'

class Student < Person
    def initialize(name = "Unknown", age, classroom, parent_permission: true)
        super(name, age, parent_permission: parent_permission)
        @classroom = Classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end