class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email, null: false
      t.string :phone_number
      t.string :password_digest
      t.boolean :activated, default: false
      t.string :confirm_token
      t.string :reset_digest
      t.datetime :reset_sent_at
      t.string :device_id
      t.string :type

      t.timestamps
    end
  end
end
