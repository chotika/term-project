require 'spec_helper'
require 'rails_helper'
RSpec.describe Examinationroom, :type => :model do
    
    describe 'searching by room' do
        it 'should call Examinationroom with room name' do
        Examinationroom.should_receive(:search).with('one')
        Examinationroom.search('one')
        end
    end

end