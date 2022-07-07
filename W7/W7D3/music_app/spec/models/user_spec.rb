require 'rails_helper'

describe User do 
  subject(:cake) do 
    FactoryBot.build(:user, email: "deborah@gmail.com", password: "starwars")
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6)}


  describe "#is_password?" do 
    it 'checks if the password matches' do
      expect(user.is_password?("starwars")).to be true
    end 
  end

  describe "reset_session_token" do
    it 'resets the users session token' do 
      expect()
    end
  end
end