class ClinicReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @clinic_reports = ClinicReport.all
  end

  def new
    @clinic_report = ClinicReport.new
  end

  def create
    clinic_report = ClinicReport.new(clinic_report_params)
    if report.save
      flash[:notice] = "レポートを作成しました"
      redirect_to report_clinic_report_path
    else
      flash[:clinic_report] = clinic_report
      flash[:error_messages] = clinic_report.errors.full_messages
      redirect_back fallback_location: clinic_report
    end
  end

  def show
  end

  private
  
  def clinic_report_params
    params.require(:clinic_report).permit(:number_of_clinics, :current_state, :work_style, :address_at_that_time, :number_of_aih, :amh)
  end
end
