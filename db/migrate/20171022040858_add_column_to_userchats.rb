class AddColumnToUserchats < ActiveRecord::Migration[5.1]
  def change
    add_column :userchats, :user_id, :integer
    add_column :userchats, :chatroom_id, :integer
  end
end
