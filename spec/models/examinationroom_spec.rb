require 'rails_helper'

describe Examinationroom do
  it 'should call Examinationroom with room_name keywords' do 
        Examinationroom.should_receive(:find).
            with(hash_including :room_name => 'One')
        Examinationroom.find('One')
    end
    it 'should raise an InvalidKeyError with no API key' do 
        Examinationroom.stub(:api_key).and_return('INVALID')
        lambda { Examinationroom.find('One') }.
            should raise_error(Examinationroom::InvalidKeyError)
    end
     it 'should raise an InvalidKeyError with no API key' do 
        Examinationroom.stub(:api_key).and_return('')
        lambda { Examinationroom.find('One') }.
            should raise_error(Examinationroom::InvalidKeyError)
    end
end
