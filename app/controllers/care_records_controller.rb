class CareRecordsController < ApplicationController
  before_action :set_care_record, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /care_records
  # GET /care_records.json
  def index
    @care_records = CareRecord.all
    @q        = CareRecord.search(params[:q])
    @care_records = @q.result(distinct: true)
  end

  def index_top
    @care_records = CareRecord.where(day:Date.today)
  end

  # GET /care_records/1
  # GET /care_records/1.json
  def show
  end

  # GET /care_records/new
  def new
    @care_record = CareRecord.new
  end

  # GET /care_records/1/edit
  def edit
  end

  # POST /care_records
  # POST /care_records.json
  def create
    @care_record = CareRecord.new(care_record_params)

    respond_to do |format|
      if @care_record.save
        format.html { redirect_to @care_record, notice: '作成成功。' }
        format.json { render :show, status: :created, location: @care_record }
      else
        format.html { render :new }
        format.json { render json: @care_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /care_records/1
  # PATCH/PUT /care_records/1.json
  def update
    respond_to do |format|
      if @care_record.update(care_record_params)
        format.html { redirect_to @care_record, notice: '更新されました。' }
        format.json { render :show, status: :ok, location: @care_record }
      else
        format.html { render :edit }
        format.json { render json: @care_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /care_records/1
  # DELETE /care_records/1.json
  def destroy
    @care_record.destroy
    respond_to do |format|
      format.html { redirect_to care_records_url, notice: '削除されました。' }
      format.json { head :no_content }
    end

    def contact
      @care_record = Care_Record.find(params[:id])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_record
      @care_record = CareRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def care_record_params
      params.require(:care_record).permit(:day, :arrive_time, :leave_time, :blood_pressure, :pulse, :temperature, :medichine, :treatment, :dietary_intake, :water_intake, :gait_training, :distance, :toilet, :stretch, :oral_stretch, :recreation, :form, :act, :detachable, :training, :walking, :rec_name, :bathing, :meal_size, :contact, :opinion, :staff_id_id, :customer_id_id)
    end
end
