class Person
    attr_accessor :name, :age
    attr_reader :id

    def initialize(name = "Unknown", age, parent_permission: true)
        @id = Random.ran(1..10_000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def can_use_services?
        is_of_age? || @parent_permission
    end

    private

    def is_of_age?
        @age >= 18
    end
end