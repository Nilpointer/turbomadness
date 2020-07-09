require 'test_helper'

class Model2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model2 = model2s(:one)
  end

  test "should get index" do
    get model2s_url
    assert_response :success
  end

  test "should get new" do
    get new_model2_url
    assert_response :success
  end

  test "should create model2" do
    assert_difference('Model2.count') do
      post model2s_url, params: { model2: { title: @model2.title } }
    end

    assert_redirected_to model2_url(Model2.last)
  end

  test "should show model2" do
    get model2_url(@model2)
    assert_response :success
  end

  test "should get edit" do
    get edit_model2_url(@model2)
    assert_response :success
  end

  test "should update model2" do
    patch model2_url(@model2), params: { model2: { title: @model2.title } }
    assert_redirected_to model2_url(@model2)
  end

  test "should destroy model2" do
    assert_difference('Model2.count', -1) do
      delete model2_url(@model2)
    end

    assert_redirected_to model2s_url
  end
end
