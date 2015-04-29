require 'rails_helper'
require 'spec_helper'

RSpec.describe ExaminationroomsController, :type => :controller do
    
    let(:valid_attributes) { { "firstname" => "Mook" ,"lastname" => "Chew", "position" => "officer"} }

    let(:invalid_attributes) {}
    
    describe  'CREATE proctor'  do
        before(:each) do
            @proctor = { :firstname => "Mook","lastname" => "Chew", "position" => "officer"}
        end
        it "should create a new proctor with valid attribute" do
            expect{
            post :create, :proctor => @proctor
        }.to change(Proctor, :count).by(1)
        end
        it "should not create a new proctor " do
          proctor = Proctor.create.should_not be_valid
          get :index
          expect {
            post :create
            }.to change(Proctor, :count).by(0)
        end
         
    end

  
    describe "DESTROY proctor" do
         it "destroys proctor" do
           proctor = Proctor.create valid_attributes
            expect {
              delete :destroy, {id: proctor.to_param}
            }.to change(Proctor, :count).by(-1)
         end

    end
    
    describe 'UPDATE proctor', focus: true do
        before(:each) { @proctor = Proctor.create valid_attributes}

        it "should assign @proctor to the proctor" do
            get :edit, id: @proctor.id
            assigns(:proctor).id.should eq(@proctor.id)
        end
    end

  
  describe "SHOW proctor" do
    it "assigns a proctor as @proctor" do
      proctor = Proctor.create! valid_attributes
      get :show, {:id => proctor.to_param}
      expect(assigns(:proctor)).to eq(proctor)
    end
  end

end
