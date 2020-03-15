require "rails_helper"

RSpec.describe "User registraion", :type => :request do

  it "successfull creation of user should return a status of created" do

    post "/registrations", :params => { :user => {:name => "roy"} }
    json = JSON.parse(response.body)
    expect(json["status"]).to eql("created")

  end

  it "user name can't be empty" do
    post "/registrations", :params => { :user => {:name => "" }}
    json = JSON.parse(response.body)
    expect(json["status"]).to  eql(500)
  end
end