require 'spec_helper'

describe 'Api::V1::Users' do
  describe 'GET /api/v1/users' do
    it 'returns empty array when user count is 0' do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get api_v1_users_path
      response.body.should eq('[]')
    end

    it 'returns a document representing all users' do
      user1 = FactoryGirl.create(:user, email: 'test@test.com', password: 'password123')
      get api_v1_users_path
      return_value = JSON.parse(response.body)
      return_value[0]["email"].should eq(user1.email)
      return_value[0]["_id"].should eq(user1._id.to_s)
      return_value[0]["sign_in_count"].should eq(user1.sign_in_count)
      return_value[0]["current_sign_in_at"].should eq(user1.current_sign_in_at)
      return_value[0]["last_sign_in_at"].should eq(user1.last_sign_in_at)
      return_value[0]["current_sign_in_ip"].should eq(user1.current_sign_in_ip)
      return_value[0]["last_sign_in_ip"].should eq(user1.last_sign_in_ip)
      response.status.should eq(200)
    end

    it 'stops unauthorized users from viewing records'

    it 'paginates user record results'
  end

  describe 'GET /api/v1/users/:_id' do
    it 'returns a JSON ' do
      pending
      user1 = FactoryGirl.create(:user, email: 'test@test.com', password: 'password123')
      get api_v1_users_path(user1)
    end

    it 'returns 404 for missing records'
  end
end




