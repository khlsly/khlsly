class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.references :ministry, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
