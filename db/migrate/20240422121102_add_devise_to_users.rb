class AddDeviseToUsers < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
      t.string :encrypted_password, null: false, default: ""
    end
  end
end
