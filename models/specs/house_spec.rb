require("minitest/autorun")
require_relative("../house.rb")

class HouseTest < MiniTest::Test

  def setup()
    options = {
      "id" => 1,
      "name" => "Ravenclaw",
      "logo" => "url here"
    }
    @house = House.new(options)
  end

  def test_name()
    result = @house.name()
    assert_equal("Ravenclaw", result)
  end

end
