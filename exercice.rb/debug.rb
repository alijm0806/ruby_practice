# # Exercise 2: Write a function to print when each person died in a sentence.
# dickens = ["Charles Dickens", 1870]
# thackeray = ["William Thackeray", 1863]
# trollope = ["Anthony Trollope", 1882]
# hopkins = ["Gerard Manley Hopkins", 1889]

# def died(array)
#   name = array[0]
#   year = array[1]

#   puts "#{name} died in #{year}."
# end

# puts died(dickens)
# puts died(thackeray)
# puts died(trollope)
# puts died(hopkins)

# Exercise 4: Make a class to store and display a person’s info.
class Person
  def initialize(fname, lname)
    @first_name = fname
    @last_name == lname
  end

  def fname
    @fname
  end

  def to_s
    "@last_name + ,  + @first_name"ß
  end
end

tj = Person.new("Thomas", "Jefferson")
puts tj.fname
puts tj
