class CreateBatches < ActiveRecord::Migration[8.0]
  def change
    create_table :batches do |t|
      t.string :name
      t.integer :limit_tickets
      t.string :start_date
      t.float :value
      t.string :end_date
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
