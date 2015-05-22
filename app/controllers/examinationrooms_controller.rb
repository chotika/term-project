class ExaminationroomsController < ApplicationController
  
  def index
    if params[:search] != nil 
       
        if params[:search] == 'one'
          @examinationrooms = Examinationroom.search(params[:search])
          @proctor = Proctor.searchname('1')
        end
    else 
        @examinationrooms = Examinationroom.all
    end    
    
    if params[:searchname] != nil

        @proctor = Proctor.searchname(params[:searchname])
    else    
        @proctor = Proctor.all
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
    if @proctor.update_attributes(params[:proctor])
      flash[:notice] = "#{@proctor.firstname} was successfully updated."
      redirect_to examinationrooms_path
    else
      flash[:title] = "Update proctor_id : #{@proctor.proctor_id} name : #{@proctor.firstname} was failed"
      flash[:notice] = @proctor.errors.full_messages 
      redirect_to examinationrooms_path
    end
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

end