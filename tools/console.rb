require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Student1")
s2 = Student.new("Student2")
s3 = Student.new("Student3")

i1 = Instructor.new("Instructor1")
i2 = Instructor.new("Instructor2")
i3 = Instructor.new("Instructor3")

bt1 = BoatingTest.new(s1, "test1", "passed", i1)
bt2 = BoatingTest.new(s2, "test2", "status", i2)
bt3 = BoatingTest.new(s3, "test3", "status", i3)
bt4 = BoatingTest.new(s1, "test1", "failed", i3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

