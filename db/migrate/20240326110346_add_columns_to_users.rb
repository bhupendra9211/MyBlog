class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, after: :id
    add_column :users, :contact, :string, after: :name
  end
end
