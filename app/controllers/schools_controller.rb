class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @schools = School.new
  end

  def create
    @school = School.new(school_params)
    @school.save
    redirect_to schools_path
  end

  def edit
    @school = School.find(params[:id])
  end

  def show
    Rails.logger.debug(params[:id])
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to schools_path
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path
  end
  
  private
    def school_params
      params.require(:school).permit(:name, :age, :grade, :sex)
    end
end