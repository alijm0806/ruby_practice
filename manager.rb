class Employee
  attr_reader :first_name, :last_name, :salary
  attr_writer :first_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year, and that is their salary"
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

# employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})
employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
# p employee1.first_name
# employee1.print_info
# employee1.give_annual_raise
# employee1.print_info

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)
# employee2.print_info

# p employee2.first_name
# employee2.first_name = "Jessica"
# p employee2.first_name

# employee2.print_info

# a manager can send reports
# a manager can have employees

class Manager < Employee
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    p "about to send the report..."
    # some code that actually sends a report
    p "definitely just sent that report!"
  end

  def give_all_raises
    p "going to give everyody a raise"
    employees.each do |employee|
      employee.give_annual_raise
    end
    # employee1 = employees[0]
    # employee1.give_annual_raise
    # employee2 = employees[1]
    # employee2.give_annual_raise
  end

  def fire_all_employees
    employees.each do |employee|
      p employee.active = false
    end
  end
end

manager = Manager.new(
  first_name: "Manny",
  last_name: "Williams",
  salary: 200000,
  active: true,
  employees: [employee1, employee2],
)

# manager.print_info
# manager.give_annual_raise
# manager.print_info
# manager.send_report

# p manager.employees
# p "employee1 salary before raise"
# p employee1.salary
# p "employee2 salary before raise"
# p employee2.salary
# manager.give_all_raises
# p "employee1 salary after raise"
# p employee1.salary
# p "employee2 salary after raise"
# p employee2.salary

manager.fire_all_employees

p manager.employees

# Don't
# Repeat
# Yourself

# Write
# Everything
# Twice

# give all the employees a raise
# make a method
# find all the employees [employee1, employee2]
# find just one of the employees
# give one employee a raise
