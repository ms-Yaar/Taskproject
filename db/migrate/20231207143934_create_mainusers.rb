class CreateMainusers < ActiveRecord::Migration[7.1]
  def change
    create_table :mainusers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :mainuser_type

      t.timestamps
    end
  end
end
