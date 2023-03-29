class Admin::DashboardController < AdminController
  def index
    @count_companies = Company.count
    @count_employees = Employee.count
    @count_users = User.count
  end
end
