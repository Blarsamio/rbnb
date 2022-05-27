require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookings_index_url
    assert_response :success
  end

  test "should get accept" do
    get bookings_accept_url
    assert_response :success
  end

  test "should get reject" do
    get bookings_reject_url
    assert_response :success
  end

  test "should get create" do
    get bookings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get bookings_destroy_url
    assert_response :success
  end
end
