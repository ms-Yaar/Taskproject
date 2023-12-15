class CreateBugs < ActiveRecord::Migration[7.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.date :deadline
      t.string :screenshot
      t.string :type
      t.integer :status

      t.timestamps
    end
  end
end
