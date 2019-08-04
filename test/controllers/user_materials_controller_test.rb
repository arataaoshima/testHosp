require 'test_helper'

class UserMaterialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_material = user_materials(:one)
  end

  test "should get index" do
    get user_materials_url
    assert_response :success
  end

  test "should get new" do
    get new_user_material_url
    assert_response :success
  end

  test "should create user_material" do
    assert_difference('UserMaterial.count') do
      post user_materials_url, params: { user_material: { material_id: @user_material.material_id, user_id: @user_material.user_id } }
    end

    assert_redirected_to user_material_url(UserMaterial.last)
  end

  test "should show user_material" do
    get user_material_url(@user_material)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_material_url(@user_material)
    assert_response :success
  end

  test "should update user_material" do
    patch user_material_url(@user_material), params: { user_material: { material_id: @user_material.material_id, user_id: @user_material.user_id } }
    assert_redirected_to user_material_url(@user_material)
  end

  test "should destroy user_material" do
    assert_difference('UserMaterial.count', -1) do
      delete user_material_url(@user_material)
    end

    assert_redirected_to user_materials_url
  end
end
