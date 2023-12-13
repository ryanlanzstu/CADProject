# test/models/collegemodule_test.rb

require 'test_helper'

class CollegemoduleTest < ActiveSupport::TestCase
  test "should create a new collegemodule" do
    collegemodule = Collegemodule.create(module_name: 'Module 1', module_id: 'ID001', module_lecturer: 'Lecturer 1')
    assert collegemodule.valid?
  end

  test "should read a collegemodule" do
    collegemodule = Collegemodule.create(module_name: 'Module 1', module_id: 'ID001', module_lecturer: 'Lecturer 1')
    assert_equal 'Module 1', collegemodule.module_name
  end

  test "should update a collegemodule" do
    collegemodule = Collegemodule.create(module_name: 'Module 1', module_id: 'ID001', module_lecturer: 'Lecturer 1')
    collegemodule.update(module_name: 'Updated Module')
    assert_equal 'Updated Module', collegemodule.reload.module_name
  end

  test "should delete a collegemodule" do
    collegemodule = Collegemodule.create(module_name: 'Module 1', module_id: 'ID001', module_lecturer: 'Lecturer 1')
    collegemodule.destroy
    assert_raises(ActiveRecord::RecordNotFound) { collegemodule.reload }
  end
end
