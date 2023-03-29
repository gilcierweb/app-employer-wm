class Admin::PeriodsVacationsController < AdminController
  before_action :set_periods_vacation, only: %i[ show edit update destroy ]

  # GET /admin/periods_vacations or /admin/periods_vacations.json
  def index
    @pagy, @periods_vacations = pagy(PeriodsVacation.recently_created)
  end

  # GET /admin/periods_vacations/1 or /admin/periods_vacations/1.json
  def show
  end

  # GET /admin/periods_vacations/new
  def new
    @periods_vacation = PeriodsVacation.new
  end

  # GET /admin/periods_vacations/1/edit
  def edit
  end

  # POST /admin/periods_vacations or /admin/periods_vacations.json
  def create
    @periods_vacation = PeriodsVacation.new(periods_vacation_params)

    respond_to do |format|
      if @periods_vacation.save
        format.html { redirect_to admin_periods_vacation_url(@periods_vacation), notice: t('controller.create') }
        format.json { render :show, status: :created, location: @periods_vacation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @periods_vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/periods_vacations/1 or /admin/periods_vacations/1.json
  def update
    respond_to do |format|
      if @periods_vacation.update(periods_vacation_params)
        format.html { redirect_to admin_periods_vacation_url(@periods_vacation), notice: t('controller.update') }
        format.json { render :show, status: :ok, location: @periods_vacation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @periods_vacation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/periods_vacations/1 or /admin/periods_vacations/1.json
  def destroy
    @periods_vacation.destroy

    respond_to do |format|
      format.html { redirect_to admin_periods_vacations_url, notice: t('controller.destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periods_vacation
      @periods_vacation = PeriodsVacation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def periods_vacation_params
      params.require(:periods_vacation).permit(:name, :date_start, :date_end, :gross_salary, :average_value, :number_dependents, :pension_alimentary, :bonus_pecuniary, :advance_parcel, :days, :employee_id)
    end
end
