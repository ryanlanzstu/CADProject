require "application_system_test_case"

class CollegemodulesTest < ApplicationSystemTestCase
  setup do
    @collegemodule = collegemodules(:one)
  end

  test "visiting the index" do
    visit collegemodules_url
    assert_selector "h1", text: "Modules"
  end

  test "should create collegemodule" do
    visit collegemodules_url
    click_on "New Module"

    fill_in "Module", with: @collegemodule.module_id
    fill_in "Module lecturer", with: @collegemodule.module_lecturer
    fill_in "Module name", with: @collegemodule.module_name
    click_on "Create Module"

    assert_text "Module Created!"
    click_on "Back"
  end

  test "should update Collegemodule" do
    visit collegemodule_url(@collegemodule)
    click_on "Edit Module", match: :first

    fill_in "Module", with: @collegemodule.module_id
    fill_in "Module lecturer", with: @collegemodule.module_lecturer
    fill_in "Module name", with: @collegemodule.module_name
    click_on "Update Module"

    assert_text "Module Updated!"
    click_on "Back"
  end

  test "should destroy Collegemodule" do
    visit collegemodule_url(@collegemodule)
    click_on "Delete Module", match: :first

    assert_text "Module Deleted!"
  end
end
