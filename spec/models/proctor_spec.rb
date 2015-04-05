require 'rails_helper'

RSpec.describe Proctor, :type => :model do
    it 'should call  keywords' do 
        Proctor.should_receive(:find).
            with(hash_including :firstname => '1')
        Proctor.find('1')
    end
    
end
