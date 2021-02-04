class AddUserIdToScripts < ActiveRecord::Migration[6.1]
  def change
    add_reference :scripts, :user, null: false, foreign_key: true
  end
end
