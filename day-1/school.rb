class Student
    attr_accessor :id, :name, :email, :age, :program, :level 
    def initialize(id:, name:, email:, age:, program:, level:)
        @id = id
        @name = name
        @email = email
        @age = age
        @program = program
        @level = level
    end
end


class ForeignStudent < Student
    attr_accessor :country
    def initialize(id:, name:, email:, age:, program:, level:, country:)
        super(id: id, name: name, email: email, age: age, program: program, level: level)
        @country = country
    end
end 


# 1. Create a regular Student
student1 = Student.new(
  id: 101, 
  name: "Alice Smith", 
  email: "alice@example.com", 
  age: 20, 
  program: "Computer Science", 
  level: "Undergraduate"
)

puts "Student: #{student1.name}, Program: #{student1.program}"


# 2. Create a ForeignStudent
# Note that we include the :country argument here
student2 = ForeignStudent.new(
  id: 102, 
  name: "Hiroshi Tanaka", 
  email: "hiroshi@example.com", 
  age: 22, 
  program: "Engineering", 
  level: "Graduate",
  country: "Japan"
)

puts "Foreign Student country: #{student2.country}"