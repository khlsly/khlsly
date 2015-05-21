class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :password
      t.boolean :isAdmin

      t.timestamps null: false
    end
  end
end
