require_relative("../db/sql_runner.rb")

class House

  attr_reader(:id, :name, :logo)

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @logo = options["logo"]
  end

  def save()
    sql = "INSERT INTO houses
          (name, logo)
          VALUES ($1, $2)
          RETURNING id"
    values = [@name, @logo]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()["id"].to_i()
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run(sql)
    result = houses.map {|house| House.new(house)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1;"
    values = [id]
    house_hash = SqlRunner.run(sql, values).first()
    result = House.new(house_hash)
    return result
  end


end
