require 'rails_helper'

RSpec.describe Driver, type: :model do
  context 'when creating a driver' do 
    it "is valid with valid attributes" do
        attributes = {first_name: 'matt', last_name: 'kuras', birthdate: 'Nov 30, 1994', license_number: '12345678', expiration_date: '4/24/24', email: 'mattkuras@gmail.com', password: 'Mk23002300!', }
        expect(Admin.new(attributes)).to be_valid
    end
  end
end
