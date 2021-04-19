require 'rails_helper'

RSpec.describe Admin, :type => :model do
  it "is valid with valid attributes" do
    attributes = {username: 'mattkuras', email: 'mattkuras@gmail.com', password: '123456'}
    expect(Admin.new(attributes)).to be_valid
  end

  it "is not valid without a username" do 
    attributes = {email: 'mattkuras@gmail.com', password: '123456'}
    expect(Admin.new(attributes)).not_to be_valid
  end
  it "is not valid without an email" do 
    attributes = {username: 'mattkuras', password: '123456'}
    expect(Admin.new(attributes)).not_to be_valid
  end
  it "is not valid without a password" do 
    attributes = {email: 'mattkuras@gmail.com', username: 'mattkuras'}
    expect(Admin.new(attributes)).not_to be_valid
  end
end