# test/models/collegemodule_test.rb

require 'test_helper'

class CollegemoduleTest < ActiveSupport::TestCase
  test "should create a new collegemodule" do
    collegemodule = Collegemodule.create(name: 'Module 1', description: 'Description for Module 1')
    assert collegemodule.valid?
  end

  test "should read a collegemodule" do
    collegemodule = Collegemodule.create(name: 'Module 1', description: 'Description for Module 1')
    assert_equal 'Module 1', collegemodule.name
  end

  test "should update a collegemodule" do
    collegemodule = Collegemodule.create(name: 'Module 1', description: 'Description for Module 1')
    collegemodule.update(name: 'Updated Module')
    assert_equal 'Updated Module', collegemodule.reload.name
  end

  test "should delete a collegemodule" do
    collegemodule = Collegemodule.create(name: 'Module 1', description: 'Description for Module 1')
    collegemodule.destroy
    assert_raises(ActiveRecord::RecordNotFound) { collegemodule.reload }
  end
end
