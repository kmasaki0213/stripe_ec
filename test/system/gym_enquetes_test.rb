require "application_system_test_case"

class GymEnquetesTest < ApplicationSystemTestCase
  setup do
    @gym_enquete = gym_enquetes(:one)
  end

  test "visiting the index" do
    visit gym_enquetes_url
    assert_selector "h1", text: "Gym enquetes"
  end

  test "should create gym enquete" do
    visit gym_enquetes_url
    click_on "New gym enquete"

    fill_in "Age", with: @gym_enquete.age
    fill_in "Course", with: @gym_enquete.course_id
    fill_in "Mail", with: @gym_enquete.mail
    fill_in "Name", with: @gym_enquete.name
    fill_in "Present", with: @gym_enquete.present_id
    fill_in "Request", with: @gym_enquete.request
    fill_in "Score", with: @gym_enquete.score
    click_on "Create Gym enquete"

    assert_text "Gym enquete was successfully created"
    click_on "Back"
  end

  test "should update Gym enquete" do
    visit gym_enquete_url(@gym_enquete)
    click_on "Edit this gym enquete", match: :first

    fill_in "Age", with: @gym_enquete.age
    fill_in "Course", with: @gym_enquete.course_id
    fill_in "Mail", with: @gym_enquete.mail
    fill_in "Name", with: @gym_enquete.name
    fill_in "Present", with: @gym_enquete.present_id
    fill_in "Request", with: @gym_enquete.request
    fill_in "Score", with: @gym_enquete.score
    click_on "Update Gym enquete"

    assert_text "Gym enquete was successfully updated"
    click_on "Back"
  end

  test "should destroy Gym enquete" do
    visit gym_enquete_url(@gym_enquete)
    accept_confirm { click_on "Destroy this gym enquete", match: :first }

    assert_text "Gym enquete was successfully destroyed"
  end
end
