require "rails_helper"

RSpec.describe "Measurement", :type => :request do

	before :each do
	   @user = User.create(name: 'nyaga')
	   @item = Item.create(name: 'photo', photo: "lskdjfalsdkjfalkdsjfasj")
	end


  it "successfull creation of a measurement should return a status of created" do

    post "/measurements", :params => { :measurement => {:user_id => @user.id, :item_id => @item.id, :measurement => "50"} }
    json = JSON.parse(response.body)
    expect(json["status"]).to eql("created")

  end


end