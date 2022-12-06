require "test_helper"

class DrivingCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driving_course = driving_courses(:one)
  end

  test "should get index" do
    get driving_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_driving_course_url
    assert_response :success
  end

  test "should create driving_course" do
    assert_difference("DrivingCourse.count") do
      post driving_courses_url, params: { driving_course: { date: @driving_course.date, description: @driving_course.description, price: @driving_course.price, quantity: @driving_course.quantity, title: @driving_course.title } }
    end

    assert_redirected_to driving_course_url(DrivingCourse.last)
  end

  test "should show driving_course" do
    get driving_course_url(@driving_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_driving_course_url(@driving_course)
    assert_response :success
  end

  test "should update driving_course" do
    patch driving_course_url(@driving_course), params: { driving_course: { date: @driving_course.date, description: @driving_course.description, price: @driving_course.price, quantity: @driving_course.quantity, title: @driving_course.title } }
    assert_redirected_to driving_course_url(@driving_course)
  end

  test "should destroy driving_course" do
    assert_difference("DrivingCourse.count", -1) do
      delete driving_course_url(@driving_course)
    end

    assert_redirected_to driving_courses_url
  end
end
