require 'spec_helper'
require 'rails_helper'


RSpec.describe Proctor , :type => :model do
    describe 'searching by name' do
        it 'should call Proctor with name' do
        Proctor.should_receive(:searchname).with('1')
        Proctor.searchname('1')
        end
    end
end