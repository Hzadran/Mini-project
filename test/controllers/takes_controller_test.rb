require 'test_helper'

class TakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @take = takes(:one)
  end

  test "should get index" do
    get takes_url
    assert_response :success
  end

  test "should get new" do
    get new_take_url
    assert_response :success
  end

  test "should create take" do
    assert_difference('Take.count') do
      post takes_url, params: { take: { course_id: @take.course_id, student_id: @take.student_id } }
    end

    assert_redirected_to take_url(Take.last)
  end

  test "should show take" do
    get take_url(@take)
    assert_response :success
  end

  test "should get edit" do
    get edit_take_url(@take)
    assert_response :success
  end

  test "should update take" do
    patch take_url(@take), params: { take: { course_id: @take.course_id, student_id: @take.student_id } }
    assert_redirected_to take_url(@take)
  end

  test "should destroy take" do
    assert_difference('Take.count', -1) do
      delete take_url(@take)
    end

    assert_redirected_to takes_url
  end
end
