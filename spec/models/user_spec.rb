require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    describe 'passwords match' do
      it 'will not save unless passwords match' do

        @user = User.new({
          first_name: 'geo', 
          last_name: 'teo',
          email: 'test@email.com', 
          password: '123456', 
          password_confirmation: '1234567'
      })
      @user.save
      expect(@user.errors.full_messages).not_to be_empty

      end
    end

    describe 'required fields are entered' do
      it 'will not save unless name and passwords are entered' do

        @user = User.new({
          first_name: 'geo', 
          last_name: 'teo',
          email: nil, 
          password: '123456', 
          password_confirmation: '123456'
      })
      expect(@user.save).to be false

      
      end
    end

    describe 'email adress must be unique' do
      it 'will not save if email already exists' do

        @user = User.new({
          first_name: 'geo', 
          last_name: 'teo',
          email: 'test@email.com', 
          password: '123456', 
          password_confirmation: '123456'
        })
        @user.save

        @user2 = User.new({
          first_name: 'rikki', 
          last_name: 'teo',
          email: 'test@email.com', 
          password: '123456', 
          password_confirmation: '123456'
      })
      @user2.save
      expect(@user2.save).to be false
      end
    end

    describe 'email adress is not case sensitive' do
      it 'will not save if email in opposite case already exists' do

        @user = User.new({
          first_name: 'geo', 
          last_name: 'teo',
          email: 'test@email.com', 
          password: '123456', 
          password_confirmation: '123456'
        })
        @user.save

        @user2 = User.new({
          first_name: 'rikki', 
          last_name: 'teo',
          email: 'TEST@email.com', 
          password: '123456', 
          password_confirmation: '123456'
      })
      @user2.save
      expect(@user2.save).to be false
      end
    end

    describe 'if email has different case' do
      it 'still logs in' do

        @user = User.new({
          first_name: 'geo', 
          last_name: 'teo',
          email: 'tESt@email.com', 
          password: '123456', 
          password_confirmation: '123456'
      })
      @user.save
      @user_login = User.authenticate_with_credentials('TeST@eMail.Com', '123456')
      
      expect(@user_login).to be_truthy

      end
    end
  end
end
