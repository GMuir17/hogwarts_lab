require_relative("../db/sql_runner.rb")

class Student

  attr_reader(:id, :first_name, :last_name, :house, :age, :slogan)

  def initialize(options)
    @id = options["id"].to_i()
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @house = options["house"]
    @age = options["age"].to_i()
    @slogan = options["slogan"]
  end


  def save()
    sql = "INSERT INTO students
          (first_name, last_name, house, age, slogan)
          VALUES ($1, $2, $3, $4, $5)
          RETURNING id"
    values = [@first_name, @last_name, @house, @age, @slogan]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()["id"].to_i()
  end

  def self.all()
    sql = "SELECT * FROM students;"
    students = SqlRunner.run(sql)
    result = students.map {|student| Student.new(student)}
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1;"
    values = [id]
    student_hash = SqlRunner.run(sql, values).first()
    result = Student.new(student_hash)
    return result
  end


end
