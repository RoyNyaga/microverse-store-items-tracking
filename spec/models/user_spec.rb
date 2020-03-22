# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'nyaga')
  end

  context 'Valid user' do
    it 'user should be valid' do
      expect(@user).to be_valid
    end

    it 'user should not be empty' do
      @user.name = ''
      expect(@user).not_to be_valid
    end

    it 'user name should be greater than equal or greater than 3' do
      @user.name = 'qw'
      expect(@user).not_to be_valid
    end
  end
end
