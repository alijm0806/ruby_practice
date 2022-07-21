require "./employee.rb"
require "./email_reportable.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({ :first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true })
employee1 = Actualize::Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
p employee1.first_name
employee1.print_info
employee1.give_annual_raise
employee1.print_info

employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 100000, active: false)
employee2.print_info

p employee2.first_name
employee2.first_name = "Jessica"
p employee2.first_name

employee2.print_info

manager = Actualize::Manager.new(
  first_name: "Manny",
  last_name: "Williams",
  salary: 200000,
  active: true,
  employees: [employee1, employee2],
)

manager.print_info
manager.give_annual_raise
manager.print_info
manager.send_report

p manager.employees
p "employee1 salary before raise"
p employee1.salary
p "employee2 salary before raise"
p employee2.salary
manager.give_all_raises
p "employee1 salary after raise"
p employee1.salary
p "employee2 salary after raise"
p employee2.salary

manager.fire_all_employees

p manager.employees

intern = Actualize::Intern.new(first_name: "Ingrid", last_name: "Rice", salary: 0, active: true)
intern.print_info
intern.send_report
