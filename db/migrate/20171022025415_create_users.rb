class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :dob
      t.string :pca
      t.string :password
      t.boolean :online
      t.timestamps
    end
  end
end
