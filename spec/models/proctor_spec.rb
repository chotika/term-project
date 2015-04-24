require 'spec_helper'
require 'rails_helper'


RSpec.describe Proctor , :type => :model do
    describe 'searching by name' do
        it 'should call Proctor with name' do
        Proctor.should_receive(:search_name).with('1')
        Proctor.search_name('1')
        end
    end
end