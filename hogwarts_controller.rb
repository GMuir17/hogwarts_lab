require("sinatra")
require("sinatra/contrib/all")
require("pry")
require_relative("./models/student.rb")
require_relative("./models/house.rb")
also_reload("./models/*")

# INDEX
get "/students" do
  @students = Student.all()
  erb(:index)
end

# NEW
get "/students/new" do
  erb(:new)
end

# SHOW
get "/students/:id" do
  @student = Student.find(params[:id].to_i())
  erb(:show)
end

# CREATE
post "/students" do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
