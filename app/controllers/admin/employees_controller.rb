class Admin::EmployeesController < AdminController
  before_action :set_employee, only: %i[ show edit update destroy ]

  # GET /admin/employees or /admin/employees.json
  def index
    @pagy, @employees = pagy(Employee.recently_created)
  end

  # GET /admin/employees/1 or /admin/employees/1.json
  def show
  end

  # GET /admin/employees/new
  def new
    @employee = Employee.new
  end

  # GET /admin/employees/1/edit
  def edit
  end

  # POST /admin/employees or /admin/employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to admin_employee_url(@employee), notice: t('controller.create') }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/employees/1 or /admin/employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to admin_employee_url(@employee), notice: t('controller.update') }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/employees/1 or /admin/employees/1.json
  def destroy
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to admin_employees_url, notice: t('controller.destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:name, :admission_date, :cpf, :email, :birth_date, :location, :function, :wallet_working, :gross_salary, :active, :company_id)
    end
end
