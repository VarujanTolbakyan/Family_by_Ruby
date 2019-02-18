
class Person
  attr_accessor :id

  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def surname=(surname)
    @surname = surname
  end

  def surname
    @surname
  end

  def full_name
    "#{@name} #{@surname}"
  end

  def == (other)
     name == other.name && surname == other.surname
  end

  def + (other)
    name + " " + surname + ", " + other.name + " " + other.surname 
  end
end

