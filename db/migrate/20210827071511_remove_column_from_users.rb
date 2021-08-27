class RemoveColumnFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :name, :string
    add_column :users, :name, :string, null: false, default: ""
  end
end
