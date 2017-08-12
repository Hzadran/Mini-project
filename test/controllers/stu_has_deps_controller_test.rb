require 'test_helper'

class StuHasDepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stu_has_dep = stu_has_deps(:one)
  end

  test "should get index" do
    get stu_has_deps_url
    assert_response :success
  end

  test "should get new" do
    get new_stu_has_dep_url
    assert_response :success
  end

  test "should create stu_has_dep" do
    assert_difference('StuHasDep.count') do
      post stu_has_deps_url, params: { stu_has_dep: { department_id: @stu_has_dep.department_id, student_id: @stu_has_dep.student_id } }
    end

    assert_redirected_to stu_has_dep_url(StuHasDep.last)
  end

  test "should show stu_has_dep" do
    get stu_has_dep_url(@stu_has_dep)
    assert_response :success
  end

  test "should get edit" do
    get edit_stu_has_dep_url(@stu_has_dep)
    assert_response :success
  end

  test "should update stu_has_dep" do
    patch stu_has_dep_url(@stu_has_dep), params: { stu_has_dep: { department_id: @stu_has_dep.department_id, student_id: @stu_has_dep.student_id } }
    assert_redirected_to stu_has_dep_url(@stu_has_dep)
  end

  test "should destroy stu_has_dep" do
    assert_difference('StuHasDep.count', -1) do
      delete stu_has_dep_url(@stu_has_dep)
    end

    assert_redirected_to stu_has_deps_url
  end
end
