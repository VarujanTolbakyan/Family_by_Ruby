require_relative './parent'
require_relative './child'

puts "Family"

print "Ded name:"
d_name = gets.chomp
print "Ded surname:"
d_surname = gets.chomp

puts

print "Mam name:"
m_name = gets.chomp
print "Mam surname:"
m_surname = gets.chomp

par_d = Parent.new d_name,d_surname, :ded
par_m = Parent.new m_name,m_surname, :mam

print "Do you  have children(y/n):"
answer = gets.chomp

while answer == "y" do
  print "child name:"
  ch_name = gets.chomp
  print %q(Would you like to pick ded's surname or mam's(ded/mam):)
  d_or_m =  gets.chomp


  ch_surname = nil
  if d_or_m == "mam"
    ch_surname = m_surname
  else
    ch_surname = d_surname
  end

  ch = Child.new ch_name, ch_surname

  par_d.child = ch
  par_m.child = ch

  print "Do you have more children (y/n):"
  answer = gets.chomp
end

puts "Ded : #{par_d.full_name}"
puts "Mam : #{par_m.full_name}"
unless par_d.children.empty?
   puts "Children :\n\t#{ par_d.children.map {|a| a.full_name}.join "\n\t"}"
end
 
