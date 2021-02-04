class CreateScripts < ActiveRecord::Migration[6.1]
  def change
    create_table :scripts do |t|
      t.string :title
      t.string :logline

      t.timestamps
    end
  end
end
