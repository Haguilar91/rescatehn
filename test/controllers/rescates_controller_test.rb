require 'test_helper'

class RescatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rescate = rescates(:one)
  end

  test "should get index" do
    get rescates_url
    assert_response :success
  end

  test "should get new" do
    get new_rescate_url
    assert_response :success
  end

  test "should create rescate" do
    assert_difference('Rescate.count') do
      post rescates_url, params: { rescate: { adults: @rescate.adults, childs: @rescate.childs, firstname: @rescate.firstname, lastname: @rescate.lastname, latitude: @rescate.latitude, longitude: @rescate.longitude, note: @rescate.note, phone: @rescate.phone, status: @rescate.status } }
    end

    assert_redirected_to rescate_url(Rescate.last)
  end

  test "should show rescate" do
    get rescate_url(@rescate)
    assert_response :success
  end

  test "should get edit" do
    get edit_rescate_url(@rescate)
    assert_response :success
  end

  test "should update rescate" do
    patch rescate_url(@rescate), params: { rescate: { adults: @rescate.adults, childs: @rescate.childs, firstname: @rescate.firstname, lastname: @rescate.lastname, latitude: @rescate.latitude, longitude: @rescate.longitude, note: @rescate.note, phone: @rescate.phone, status: @rescate.status } }
    assert_redirected_to rescate_url(@rescate)
  end

  test "should destroy rescate" do
    assert_difference('Rescate.count', -1) do
      delete rescate_url(@rescate)
    end

    assert_redirected_to rescates_url
  end
end
