require 'pry'

class StudentsController < ApplicationController

  # before_action :student_params, only: :create
  before_action :find_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    
  end

  def new

  end

  def create
    #binding.pry
    @student = Student.new(first_name: params[:first_name],last_name: params[:last_name])
    @student.save
    # if @student.valid?
    #   @student.save
    # else
    #   render 'new'
    # end
    redirect_to student_path(@student)
  end

  private

    # def student_params
    #   params.require(:student).permit(:first_name,:last_name)
    # end

    def find_student
      @student = Student.find(params[:id])
    end

end
