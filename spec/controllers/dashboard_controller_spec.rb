require 'spec_helper'

describe DashboardController do

  describe "GET 'index'" do
    before(:each) do
      # User.delete_all
      @user_attr = FactoryGirl.attributes_for(:user)
    end
    # it "returns http success" do
    #   sign_in :user, @user_attr  
    #   get 'index'
    #   response.should be_success
    # end
  end

end
