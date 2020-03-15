require "rails_helper"

RSpec.describe "item request", :type => :request do
	before :each do
	   @item1 = Item.create(name: 'photo', photo: "lskdjfalsdkjfalkdsjfasj")
	   @item2 = Item.create(name: 'photo', photo: "lskdjfalsdkjfalkdsjfasj")
	end

  it "should return and array of item objects of length 2" do

    get "/items"
    json = JSON.parse(response.body)
    expect(json["items"].count).to eql(2)

  end


end