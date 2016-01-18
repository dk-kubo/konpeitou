class ContactsController < ApplicationController
	before_action :authenticate_user!

  def show
    @care_record = CareRecord.find(params[:care_record_id])
  end
	
	private
    # Use callbacks to share common setup or constraints between actions.
    def set_care_record
      @care_record = CareRecord.find(params[:care_record_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def care_record_params
      params.require(:care_record).permit(:day, :arrive_time, :leave_time, :blood_pressure, :pulse, :temperature, :medichine, :treatment, :dietary_intake, :water_intake, :gait_training, :distance, :toilet, :stretch, :oral_stretch, :recreation, :form, :act, :detachable, :training, :walking, :rec_name, :bathing, :meal_size, :contact, :opinion, :staff_id_id, :customer_id)
    end
end