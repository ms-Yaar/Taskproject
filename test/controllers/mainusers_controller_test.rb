require "test_helper"

class MainusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mainuser = mainusers(:one)
  end

  test "should get index" do
    get mainusers_url
    assert_response :success
  end

  test "should get new" do
    get new_mainuser_url
    assert_response :success
  end

  test "should create mainuser" do
    assert_difference("Mainuser.count") do
      post mainusers_url, params: { mainuser: { email: @mainuser.email, mainuser_type: @mainuser.mainuser_type, name: @mainuser.name, password: @mainuser.password } }
    end

    assert_redirected_to mainuser_url(Mainuser.last)
  end

  test "should show mainuser" do
    get mainuser_url(@mainuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_mainuser_url(@mainuser)
    assert_response :success
  end

  test "should update mainuser" do
    patch mainuser_url(@mainuser), params: { mainuser: { email: @mainuser.email, mainuser_type: @mainuser.mainuser_type, name: @mainuser.name, password: @mainuser.password } }
    assert_redirected_to mainuser_url(@mainuser)
  end

  test "should destroy mainuser" do
    assert_difference("Mainuser.count", -1) do
      delete mainuser_url(@mainuser)
    end

    assert_redirected_to mainusers_url
  end
end
