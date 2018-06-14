require_relative("../models/student.rb")

student1 = Student.new({
    "first_name" => "Harry",
    "last_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 11
})

student2 = Student.new({
    "first_name" => "Ron",
    "last_name" => "Weasley",
    "house" => "Gryffindor",
    "age" => 11
})

student1.save()
student2.save()
