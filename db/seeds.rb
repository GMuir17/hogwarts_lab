require_relative("../models/student.rb")
require_relative("../models/house.rb")
require("pry")

House.delete_all()
Student.delete_all()

house1 = House.new({
    "name" => "Gryffindor",
    "logo" => "https://goo.gl/images/5T7vJF"
  })

house2 = House.new({
    "name" => "Ravenclaw",
    "logo" => "https://goo.gl/images/GbTaw5"
  })

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
