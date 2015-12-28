class CusFamiliesController < ApplicationController
  before_action :set_cus_family, only: [:show, :edit, :update, :destroy]

  # GET /cus_families
  # GET /cus_families.json
  def index
    @cus_families = CusFamily.all
  end

  # GET /cus_families/1
  # GET /cus_families/1.json
  def show
  end

  # GET /cus_families/new
  def new
    @cus_family = CusFamily.new
  end

  # GET /cus_families/1/edit
  def edit
  end

  # POST /cus_families
  # POST /cus_families.json
  def create
    @cus_family = CusFamily.new(cus_family_params)

    respond_to do |format|
      if @cus_family.save
        format.html { redirect_to @cus_family, notice: 'Cus family was successfully created.' }
        format.json { render :show, status: :created, location: @cus_family }
      else
        format.html { render :new }
        format.json { render json: @cus_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cus_families/1
  # PATCH/PUT /cus_families/1.json
  def update
    respond_to do |format|
      if @cus_family.update(cus_family_params)
        format.html { redirect_to @cus_family, notice: 'Cus family was successfully updated.' }
        format.json { render :show, status: :ok, location: @cus_family }
      else
        format.html { render :edit }
        format.json { render json: @cus_family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cus_families/1
  # DELETE /cus_families/1.json
  def destroy
    @cus_family.destroy
    respond_to do |format|
      format.html { redirect_to cus_families_url, notice: 'Cus family was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cus_family
      @cus_family = CusFamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cus_family_params
      params.require(:cus_family).permit(:name, :name_kana, :relation, :living, :address, :contact, :customer_id)
    end
end
