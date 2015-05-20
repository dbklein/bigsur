class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    user = User.first
    user.name = 'Darvid Marvid'
    user.save
  end
end
