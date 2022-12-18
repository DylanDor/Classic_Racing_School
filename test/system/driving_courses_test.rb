require "application_system_test_case"

class DrivingCoursesTest < ApplicationSystemTestCase
  setup do
    @driving_course = driving_courses(:one)
  end

  test "visiting the index" do
    visit driving_courses_url
    assert_selector "h1", text: "Driving courses"
  end

  test "should create driving course" do
    visit driving_courses_url
    click_on "New driving course"

    fill_in "Date", with: @driving_course.date
    fill_in "Description", with: @driving_course.description
    fill_in "Price", with: @driving_course.price
    fill_in "Quantity", with: @driving_course.quantity
    fill_in "Title", with: @driving_course.title
    click_on "Create Driving course"

    assert_text "Driving course was successfully created"
    click_on "Back"
  end

  test "should update Driving course" do
    visit driving_course_url(@driving_course)
    click_on "Edit this driving course", match: :first

    fill_in "Date", with: @driving_course.date
    fill_in "Description", with: @driving_course.description
    fill_in "Price", with: @driving_course.price
    fill_in "Quantity", with: @driving_course.quantity
    fill_in "Title", with: @driving_course.title
    click_on "Update Driving course"

    assert_text "Driving course was successfully updated"
    click_on "Back"
  end

  test "should destroy Driving course" do
    visit driving_course_url(@driving_course)
    click_on "Destroy this driving course", match: :first

    assert_text "Driving course was successfully destroyed"
  end
end
