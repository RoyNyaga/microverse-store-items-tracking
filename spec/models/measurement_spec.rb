# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Measurement, type: :model do
  before :each do
    @item = Item.create(name: 'books', photo: 'picture link')
    @user = User.create(name: 'henry')
    @measurement = Measurement.create(user_id: @user.id, item_id: @item.id, measurement: '3')
  end

  context 'Item should be valid' do
    it 'measurement should be valid' do
      expect(@measurement).to be_valid
      puts @measurement
    end

    it 'measurment measurement can not be empty' do
      @measurement.measurement = ''
      expect(@measurement).not_to be_valid
    end
  end
end
