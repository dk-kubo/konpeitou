class CaremanagersController < ApplicationController
  before_action :set_caremanager, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /caremanagers
  # GET /caremanagers.json

  def index
    @caremanagers1 = Caremanager.where(status:1)
    @caremanagers2 = Caremanager.where(status:2)
    @q        = Caremanager.search(params[:q])
    @caremanagers = @q.result(distinct: true)
  end

  # GET /caremanagers/1
  # GET /caremanagers/1.json
  def show
  end

  # GET /caremanagers/new
  def new
    @caremanager = Caremanager.new
  end

  # GET /caremanagers/1/edit
  def edit
  end

  # POST /caremanagers
  # POST /caremanagers.json
  def create
    @caremanager = Caremanager.new(caremanager_params)

    respond_to do |format|
      if @caremanager.save
        format.html { redirect_to @caremanager, notice: '正常に登録されました。' }
        format.json { render :show, status: :created, location: @caremanager }
      else
        format.html { render :new }
        format.json { render json: @caremanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caremanagers/1
  # PATCH/PUT /caremanagers/1.json
  def update
    respond_to do |format|
      if @caremanager.update(caremanager_params)
        format.html { redirect_to @caremanager, notice: '正常に更新されました。' }
        format.json { render :show, status: :ok, location: @caremanager }
      else
        format.html { render :edit }
        format.json { render json: @caremanager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caremanagers/1
  # DELETE /caremanagers/1.json
  def destroy
    @caremanager.destroy
    respond_to do |format|
      format.html { redirect_to caremanagers_url, notice: '削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caremanager
      @caremanager = Caremanager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caremanager_params
      params.require(:caremanager).permit(:name, :name_kana, :sex, :birth, :age, :postal_code, :address, :phone_num, :mail, :company, :status)
    end
end
