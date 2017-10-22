class CreateUserchats < ActiveRecord::Migration[5.1]
  def change
    create_table :userchats do |t|

      t.timestamps
    end
  end
end
