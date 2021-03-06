class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :message
      t.boolean :sms
      t.belongs_to :user, foreign_key: true
      t.belongs_to :chatroom, foreign_key: true
      t.timestamps
    end
  end
end
