require 'spec_helper'

describe "api/v1s/index" do
  before(:each) do
    assign(:api_v1_users, [
      stub_model(Api::V1::User),
      stub_model(Api::V1::User)
    ])
  end

  it "renders a list of api/v1s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
