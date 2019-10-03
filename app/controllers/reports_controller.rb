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
    params.require(:report).permit(:how_manieth_fertility_treatments)
  end
end
