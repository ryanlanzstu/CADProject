class CreateCollegemodules < ActiveRecord::Migration[7.0]
  def change
    create_table :collegemodules do |t|
      t.string :module_name
      t.string :module_id
      t.string :module_lecturer

      t.timestamps
    end
    
  end
end
