class AddDepartmentIdToScripts < ActiveRecord::Migration[6.1]
  def change
    add_reference :scripts, :department, null: false, foreign_key: true
  end
end
