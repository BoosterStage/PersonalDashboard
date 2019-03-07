require "application_system_test_case"

class ProgressesTest < ApplicationSystemTestCase
  setup do
    @progress = progresses(:one)
  end

  test "visiting the index" do
    visit progresses_url
    assert_selector "h1", text: "Progresses"
  end

  test "creating a Progress" do
    visit progresses_url
    click_on "New Progress"

    fill_in "Entry date", with: @progress.entry_date
    fill_in "Goal", with: @progress.goal_id
    fill_in "Points", with: @progress.points
    click_on "Create Progress"

    assert_text "Progress was successfully created"
    click_on "Back"
  end

  test "updating a Progress" do
    visit progresses_url
    click_on "Edit", match: :first

    fill_in "Entry date", with: @progress.entry_date
    fill_in "Goal", with: @progress.goal_id
    fill_in "Points", with: @progress.points
    click_on "Update Progress"

    assert_text "Progress was successfully updated"
    click_on "Back"
  end

  test "destroying a Progress" do
    visit progresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Progress was successfully destroyed"
  end
end
