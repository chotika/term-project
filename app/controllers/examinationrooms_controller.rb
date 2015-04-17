class ExaminationroomsController < ApplicationController
  def index
    
    @examinationrooms = Examinationroom.all
    @proctor = Proctor.all
    
  end
  def new
    @proctor = Proctor.new
    
  end
  
  def create
 
   @proctor = Proctor.create!(params[:proctor])
   if @proctor.save
      flash.now[:notice] = "#{@proctor.firstname} was successfully created."
      redirect_to examinationrooms_path
   else
      render 'new' #note , 'new' template can access @proctor's field values!
   end
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @proctor = Proctor.find params[:id] # look up movie by unique ID
  end
  
  def edit
    @proctor = Proctor.find params[:id]
  end
   
  def update
    @proctor = Proctor.find params[:id]
    @proctor.update_attributes!(params[:proctor])
    flash[:notice] = "#{@proctor.firstname} was successfully updated."
    redirect_to examinationrooms_path(@proctor)
  end

  def destroy
    @proctor = Proctor.find(params[:id])
    @proctor.destroy
    flash[:notice] = "Proctor '#{@proctor.firstname}' deleted."
    redirect_to examinationrooms_path(@proctor)
  end
end