require_relative("../models/student.rb")
require("pry")

Student.delete_all()

student1 = Student.new({
    "first_name" => "Harry",
    "last_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 11,
    "slogan" => "For the love of life!"
})

student2 = Student.new({
    "first_name" => "Ron",
    "last_name" => "Weasley",
    "house" => "Gryffindor",
    "age" => 11,
    "slogan" => "We lose together!"
})

student1.save()
student2.save()

# binding.pry
# nil
