require 'test_helper'

class Model1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model1 = model1s(:one)
  end

  test "should get index" do
    get model1s_url
    assert_response :success
  end

  test "should get new" do
    get new_model1_url
    assert_response :success
  end

  test "should create model1" do
    assert_difference('Model1.count') do
      post model1s_url, params: { model1: { title: @model1.title } }
    end

    assert_redirected_to model1_url(Model1.last)
  end

  test "should show model1" do
    get model1_url(@model1)
    assert_response :success
  end

  test "should get edit" do
    get edit_model1_url(@model1)
    assert_response :success
  end

  test "should update model1" do
    patch model1_url(@model1), params: { model1: { title: @model1.title } }
    assert_redirected_to model1_url(@model1)
  end

  test "should destroy model1" do
    assert_difference('Model1.count', -1) do
      delete model1_url(@model1)
    end

    assert_redirected_to model1s_url
  end
end
