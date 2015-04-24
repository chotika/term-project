require 'rails_helper'
require 'spec_helper'

RSpec.describe ExaminationroomsController, :type => :controller do
     describe 'CREATE proctor' do
          it "assigns proctor" do
          proctor = Proctor.create
          get :index
          expect(assigns(:proctor)).to eq([proctor])
        end
         
    end
    describe "DESTROY proctor" do
         it "destroys proctor" do
           proctor = Proctor.create
            expect {
              delete :destroy, {:id => proctor.to_param}
            }.to change(Proctor, :count).by(-1)
         end

    end
    describe 'UPDATE proctor', focus: true do
        before(:each) { @doc = Proctor.create}

        it "should assign @proctor to the proctor" do
            get :edit, id: @doc.id
            assigns(:proctor).id.should eq(@doc.id)
        end
        
    end

end



