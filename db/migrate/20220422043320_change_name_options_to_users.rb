class ChangeNameOptionsToUsers < ActiveRecord::Migration[6.1]
  def up
    change_column :users, :name, :string, null: false, default: ""
  end
 
  def down
    change_column :users, :name, :string, null: true, default: nil
  end
  
  add_index :users, :name, unique: true
  
end
