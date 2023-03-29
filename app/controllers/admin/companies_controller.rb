class Admin::CompaniesController < AdminController
  before_action :set_company, only: %i[ show edit update destroy ]

  # GET /admin/companies or /admin/companies.json
  def index
    @pagy, @companies = pagy(Company.recently_created)
  end

  # GET /admin/companies/1 or /admin/companies/1.json
  def show
  end

  # GET /admin/companies/new
  def new
    @company = Company.new
  end

  # GET /admin/companies/1/edit
  def edit
  end

  # POST /admin/companies or /admin/companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to admin_company_url(@company), notice: t('controller.create') }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/companies/1 or /admin/companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to admin_company_url(@company), notice: t('controller.update') }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/companies/1 or /admin/companies/1.json
  def destroy
    @company.destroy

    respond_to do |format|
      format.html { redirect_to admin_companies_url, notice: t('controller.destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_params
      params.require(:company).permit(:name, :fantasy_name, :cnpj, :owner_name, :location, :site_url, :email, :description, :birth_date, :logo, :active)
    end
end
