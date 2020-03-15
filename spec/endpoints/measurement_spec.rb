require "rails_helper"

RSpec.describe "Measurement", :type => :request do

  it "successfull creation of user should return a status of created" do

    post "/measurements", :params => { :measurement => {:user_id => 1, :item_id => 1, :measurment => "23"} }
    json = JSON.parse(response.body)
    expect(json["status"]).to eql("created")

  end


end