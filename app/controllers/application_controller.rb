class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

class Company
  def initialize
    @employee = {:manager => {:quantity => 5, :salary => 1000},
                 :developer => {:quantity => 10, :salary => 500},
                 :qa => {:quantity => 15, :salary => 250}}
  end

  def total_salary(key)
    c= @employee[key]
    n = c[:salary] * 12 * c[:quantity]
    puts "Total salary per year is #{n}"
  end

  def drop(key, count)
    @employee[key][:quantity] -= count
  end

  def add(key, count)
    @employee[key][:quantity] += count
  end

end