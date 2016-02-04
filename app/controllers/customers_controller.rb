class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /customers
  # GET /customers.json
  def index
    @customers1 = Customer.where(status:1)
    @customers2 = Customer.where(status:2)
    @q        = Customer.search(params[:q])
    @customers = @q.result(distinct: true)
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])
    @cus_families = @customer.cus_families.all
    @caremanagers = Caremanager.where(caremanager_id: @caremanager_id)
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    @customer.cus_families.build
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: '正常に登録されました。' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: '正常に更新されました。' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: '正常に削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:insure_num, :name, :name_kana, :sex, :birth, :postal_code, :address, :home_num, :phone_num, :fax, :mail, :reception_day, :history_of_consul, :demand, :household, :family_situation, :caremanager_id,:status, :staff_id, :image, :image_cache,
        cus_families_attributes: [:name, :relation, :living, :address, :contact, :_destroy])
    end

    def  update_customer_params
      params.require(:customer).permit(:insure_num, :name, :name_kana, :sex, :birth, :postal_code, :address, :home_num, :phone_num, :fax, :mail, :reception_day, :history_of_consul, :demand, :household, :family_situation, :caremanager_id,:status, :staff_id, :image, :image_cache,
        cus_families_attributes: [:name, :relation, :living, :address, :contact, :_destroy, :id])
    end
end
