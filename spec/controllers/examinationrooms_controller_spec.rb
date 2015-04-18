require 'spec_helper'

RSpec.describe ExaminationroomsController, :type => :controller do

     describe "POST create" do
         
         it 'should be possible to creates a new Proctor' do
          mock= mock('Proctor')
          mock.stub!(:proctor_id)
          
          Proctor.should_receive(:create!).and_return(proctor)
          
          post :create, {:proctor => proctor}
          response.should redirect_to(examinationroom_path)
        end

    end
    
end