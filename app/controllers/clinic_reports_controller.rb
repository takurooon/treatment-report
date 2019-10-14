class ClinicReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @clinic_reports = ClinicReport.all
  end

  def new
    @report = Report.find(params[:report_id])
    @clinic_report = ClinicReport.new
  end

  def create
    clinic_report = ClinicReport.new(clinic_report_params)
    clinic_report.report_id = params[:report_id].to_i
    clinic_report.clinic_id = 1

    respond_to do |format|
      if clinic_report.save
        format.html { redirect_to clinic_report_path(clinic_report), notice: '投稿しました' }
        format.json { render :show, status: :created, location: @clinic_report }
      else
        format.html { render :new }
        format.json { render json: @clinic_report.errors, status: :unprocessable_entity }
      end
    end
    # if clinic_report.save
    #   flash[:notice] = "レポートを作成しました"
    #   redirect_to clinic_report_path(clinic_report)
    # else
    #   flash[:clinic_report] = clinic_report
    #   flash[:error_messages] = clinic_report.errors.full_messages
    #   logger.error clinic_report.errors.full_messages
    #   redirect_back fallback_location: clinic_report
    # end
  end

  def show
  end

  private
  
    def clinic_report_params
      params.require(:clinic_report).permit(:number_of_clinics, :current_state, :work_style, :address_at_that_time, :number_of_aih, :amh, :bmi, :types_of_eggs_and_sperm, :total_number_of_sairan, :number_of_eggs_collected, :total_number_of_transplants, :number_of_eggs_stored, :type_of_sairan_cycle, :types_of_fertilization_methods, :number_of_fertilized_eggs, :number_of_frozen_eggs, :cost, :credit_card_validity, :average_waiting_time, :clinic_selection_criteria, :content, :clinic_review, supplement_ids: [], female_infertility_factor_ids: [], male_infertility_factor_ids: [], female_disease_ids: [], male_disease_ids: [], female_surgery_ids: [], male_surgery_ids: [], ranso_shigeki_ids: [], hairan_yokusei_ids: [], hairan_yuhatsu_ids: [], isyoku_option_ids: [])
    end
end