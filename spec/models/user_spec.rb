require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    let(:user) {build(:user)}
    it 'ensure email presence' do
      user= User.new(password: 'safecombo', username:'mainaccount', admin: false ).save
      expect(user).to eq(false)
    end
    it 'ensure password presence' do
      user= User.new(email: 'testemail@example.com', username:'mainaccount', admin: false ).save
      expect(user).to eq(false)
    end
    it 'ensure username presence' do
      user= User.new(email: 'testemail@example.com', password:'safecombo', admin: false ).save
      expect(user).to eq(false)
    end
    it 'ensure admin presence' do
      user= User.new(email: 'testemail@example.com', password:'safecombo', username: 'mainaccount' ).save
      expect(user).to eq(false)
    end
    it 'should have successfully' do
      user= User.new(email: 'testemail@example.com', password:'safecombo', username: 'mainaccount', admin: false ).save
      expect(user).to eq(true)
    end

  end
  context 'scope tests' do

  end
end
