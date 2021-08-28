require 'rails_helper'

RSpec.describe User, type: :model do

  #facrory botが存在するかのテストです
  it 'has a valid factory bot' do
    expect(build(:user)).to be_valid
  end

  describe 'pass validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:name).is_at_most(15) }
    it { is_expected.to validate_length_of(:email).is_at_most(250) }

    it 'that email should be unique (sensitive)' do
      User.create!(name: "Sample", email: "sample@email.com", password: "sample")
      user = User.new(name: "Other", email: "SamplE@email.com", password: "other")
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
    end
  end

end
