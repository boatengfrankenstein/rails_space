require 'test_helper'
require 'avatar_controller'

# Re-raise errors caught by the controller
class AvatarController; def rescue_action(e) raise e end; end

class AvatarControllerTest < ActionController::TestCase
	fixture :users
	
	def setup
		@controller = AvatarController.new
		@request = ActionController::TestRequest.new
		@response = ActionController::TestResponse.new
		@user = users(:valid_user)
	end
	
	test "should get index" do
		get :index
		assert_response :success
	end
	
	test "should get upload" do
		get :upload
		assert_response :success
	end

	test "should get delete" do
		get :delete
		assert_response :success
	end
	
	def test_upload_and_delete
		authorize @user
		image = uploaded_file("rails.png", "image/png")
		post :upload, :avatar => { :image => image)
		assert_response :redirect
		assert_redirected_to hub_url
		assert_equal "Your avatar has been uploaded.", flash[:notice]
		assert @user.avatar.exists?
		post :delete
		assert !@user.avatar.exists?
	end
	
	
end
