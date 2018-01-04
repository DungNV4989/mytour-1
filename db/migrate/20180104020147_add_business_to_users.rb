class AddBusinessToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :business, :boolean
  end
end
