class ExaminationroomsController < ApplicationController
  def index
    
    @examinationrooms = Examinationroom.all
    @proctors = Proctor.all
    
  end
  def new
  end
  
  def create
    
    @proctors = Proctor.create!(params[:proctor])
    flash[:notice] = " was successfully created."
    redirect_to examinationrooms_path
    
    
  end
  

end