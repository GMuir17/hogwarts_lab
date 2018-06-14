require("minitest/autorun")
require_relative("../student.rb")

class StudentTest < MiniTest::Test

  def setup()
    options = {
      "id" => 1,
      "first_name" => "Harry",
      "last_name" => "Potter",
      "house" => "Gryffindor",
      "age" => 11
    }
    @student = Student.new(options)
  end

  def test_first_name()
    result = @student.first_name()
    assert_equal("Harry", result)
  end

end
