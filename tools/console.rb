require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


m1 = Movie.new("m1")
m2 = Movie.new("m2")
m3 = Movie.new("m3")
m4 = Movie.new("m4")

v1 = Viewer.new("v1")
v2 = Viewer.new("v2")
v3 = Viewer.new("v3")
v4 = Viewer.new("v4")

q1 = QueueItem.new("v1", "m1", 1)
q1 = QueueItem.new("v2", "m2", 2)
q1 = QueueItem.new("v3", "m3", 3)
q1 = QueueItem.new("v4", "m4", 4)
q1 = QueueItem.new("v1", "m1", 2)

m1.average_rating

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

0 #leave this here to ensure binding.pry isn't the last line
