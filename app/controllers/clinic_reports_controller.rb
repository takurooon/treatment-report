class ClinicReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @clinic_reports = ClinicReport.all
  end

  def new
    @clinic_report = ClinicReport.new
  end

  def show
  end
end
