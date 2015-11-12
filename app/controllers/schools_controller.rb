class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    Rails.logger.debug(@school.to_json)
    @school.save
    redirect_to schools_path
  end

  private
    def school_params
      params.require(:school).permit(:name, :int)
    end
end