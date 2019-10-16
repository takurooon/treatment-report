class ReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    report = Report.new(report_params)
    report.user_id = current_user.id
    if report.save
      flash[:notice] = "レポートを作成しました"
      redirect_to new_report_clinic_report_path(report.id)
    else
      flash[:report] = report
      flash[:error_messages] = report.errors.full_messages
      redirect_back fallback_location: report
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def report_params
    params.require(:report).permit(
      :how_manieth_fertility_treatments,
      clinic_reports_attributes:[
      :fertility_treatment_number,
      :treatment_type,
      :number_of_clinics,
      :current_state,
      :work_style,
      :address_at_that_time,
      :number_of_aih,
      :amh,
      :bmi,
      :types_of_eggs_and_sperm,
      :total_number_of_sairan,
      :number_of_eggs_collected,
      :total_number_of_transplants,
      :number_of_eggs_stored,
      :type_of_sairan_cycle,
      :types_of_fertilization_methods,
      :number_of_fertilized_eggs,
      :number_of_frozen_eggs,
      :cost,
      :credit_card_validity,
      :average_waiting_time,
      :clinic_selection_criteria,
      :content,
      :clinic_review,
      supplement_ids: [],
      female_infertility_factor_ids: [],
      male_infertility_factor_ids: [],
      female_disease_ids: [],
      male_disease_ids: [],
      female_surgery_ids: [],
      male_surgery_ids: [],
      ranso_shigeki_ids: [],
      hairan_yokusei_ids: [],
      hairan_yuhatsu_ids: [],
      isyoku_option_ids: []
    ])
  end
end
