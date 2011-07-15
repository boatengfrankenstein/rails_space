require 'test_helper'

class CommunityControllerTest < ActionController::TestCase
	fixtures :users
	fixtures :specs
	fixtures :faqs
	
	test "should get index" do
		get :index
		assert_response :success
	end
	
	test "should get browse" do
		get :browse
		assert_response :success
	end

	test "should get search" do
		get :search
		assert_response :success
	end
	
	def test_search_success
		get :search, :q => "*"
		assert_response :success
		assert_tag "p", :content => /Found 12 matches./
		assert_tag "p", :content => /Displaying users 1&ndash;10./
	end
	
	
end
