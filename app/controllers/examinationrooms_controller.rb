class ExaminationroomsController < ApplicationController
  def index
    
    @examinationrooms = Examinationroom.all
    @proctor = Proctor.all
    
    if params[:search_room] 
        @examinationrooms = Examinationroom.search
        
    else
        @examinationrooms = Examinationroom.all
    end

  end
  def new
    @proctor = Proctor.new
  end
    
  def errors
    @errors = ActiveModel::Errors.new(self)
  end
 def create
 
   @proctor = Proctor.new(params[:proctor])
   if @proctor.save
     flash[:notice] = "#{@proctor.firstname} was successfully created."
      redirect_to new_examinationroom_path
  else
    #  render :action => :new #note , 'new' template can access @proctor's field values!
      redirect_to new_examinationroom_path , notice: @proctor.errors.full_messages 
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
    redirect_to examinationrooms_path
  end
  
  def is_numeric?(obj) 
     obj.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil ? false : true
  end
  

  def search
    id = params[:id]
    if(params[:search_by] == "#{@examinationroom.room_id}")
      @examinationrooms = Examinationroom.where("#{@examinationroom.room_id} = '#{params[:search_by]}'")
       redirect_to searchroom_path
    end
    if(params[:search_by] == "#{@proctor.firstname}")
      @proctor = Proctor.where("#{@proctor.firstname} = '#{params[:search_by]}'")
    end
    
  end

end