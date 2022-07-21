module Actualize
  class Manager < Employee
    attr_reader :employees

    include EmailReportable

    def initialize(input_options)
      super
      @employees = input_options[:employees]
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
end
