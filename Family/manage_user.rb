require_relative './user'

print "Which user do you want (enter user id): "
user_id = gets.chomp

find_user = User.find_by_id user_id

if find_user
   find_user.to_hash.each_pair do |key, value|
     puts "\t#{key} : #{value}"
   end
   print "Do you want to edit it?(yes/no): "
   answer = gets.chomp
   if answer == "yes"
     print "New value for last_name : "
     last_name = gets.chomp
     print "New value for fiest_name : "
     first_name = gets.chomp
     print "New value for email : "
     email = gets.chomp
     find_user.update(first_name: first_name,last_name: last_name,email: email)
     find_user.to_hash.each_pair do |key, value|
     puts "\t#{key} : #{value}"
     end
   end
else
  puts "No user with given ID"
end



