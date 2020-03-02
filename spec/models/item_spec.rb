require 'rails_helper'

RSpec.describe Item, type: :model do
  before :each do
    @item = Item.create(name: 'books', photo: "picture link")
  end

  context 'Item should be valid' do
    it 'user should be valid' do
      expect(@item).to be_valid
    end

    it 'item name should not be empty' do
    	@item.name = ""
      expect(@item).not_to be_valid
    end

    it 'item photo should not be empty' do
    	@item.photo = ""
      expect(@item).not_to be_valid
    end
  end
end
