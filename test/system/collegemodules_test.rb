require "application_system_test_case"

class CollegemodulesTest < ApplicationSystemTestCase
  setup do
    @collegemodule = collegemodules(:one)
  end

  test "visiting the index" do
    visit collegemodules_url
    assert_selector "h1", text: "Collegemodules"
  end

  test "should create collegemodule" do
    visit collegemodules_url
    click_on "New collegemodule"

    fill_in "Module", with: @collegemodule.module_id
    fill_in "Module lecturer", with: @collegemodule.module_lecturer
    fill_in "Module name", with: @collegemodule.module_name
    click_on "Create Collegemodule"

    assert_text "Collegemodule was successfully created"
    click_on "Back"
  end

  test "should update Collegemodule" do
    visit collegemodule_url(@collegemodule)
    click_on "Edit this collegemodule", match: :first

    fill_in "Module", with: @collegemodule.module_id
    fill_in "Module lecturer", with: @collegemodule.module_lecturer
    fill_in "Module name", with: @collegemodule.module_name
    click_on "Update Collegemodule"

    assert_text "Collegemodule was successfully updated"
    click_on "Back"
  end

  test "should destroy Collegemodule" do
    visit collegemodule_url(@collegemodule)
    click_on "Destroy this collegemodule", match: :first

    assert_text "Collegemodule was successfully destroyed"
  end
end
