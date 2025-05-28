require "application_system_test_case"

class FoodEnquetesTest < ApplicationSystemTestCase
  setup do
    @food_enquete = food_enquetes(:one)
  end

  test "visiting the index" do
    visit food_enquetes_url
    assert_selector "h1", text: "Food enquetes"
  end

  test "should create food enquete" do
    visit food_enquetes_url
    click_on "New food enquete"

    fill_in "Age", with: @food_enquete.age
    fill_in "Food", with: @food_enquete.food_id
    fill_in "Mail", with: @food_enquete.mail
    fill_in "Name", with: @food_enquete.name
    fill_in "Present", with: @food_enquete.present_id
    fill_in "Request", with: @food_enquete.request
    fill_in "Score", with: @food_enquete.score
    click_on "Create Food enquete"

    assert_text "Food enquete was successfully created"
    click_on "Back"
  end

  test "should update Food enquete" do
    visit food_enquete_url(@food_enquete)
    click_on "Edit this food enquete", match: :first

    fill_in "Age", with: @food_enquete.age
    fill_in "Food", with: @food_enquete.food_id
    fill_in "Mail", with: @food_enquete.mail
    fill_in "Name", with: @food_enquete.name
    fill_in "Present", with: @food_enquete.present_id
    fill_in "Request", with: @food_enquete.request
    fill_in "Score", with: @food_enquete.score
    click_on "Update Food enquete"

    assert_text "Food enquete was successfully updated"
    click_on "Back"
  end

  test "should destroy Food enquete" do
    visit food_enquete_url(@food_enquete)
    accept_confirm { click_on "Destroy this food enquete", match: :first }

    assert_text "Food enquete was successfully destroyed"
  end
end
