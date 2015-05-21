class CreateMinistries < ActiveRecord::Migration
  def change
    create_table :ministries do |t|
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
