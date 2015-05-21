class CreateOrderDocuments < ActiveRecord::Migration
  def change
    create_table :order_documents do |t|
      t.string :value
      t.references :document, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
