class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_owner
      t.string :local_event
      t.string :description
      t.string :url_event
      t.integer :limit_participants

      t.timestamps
    end
  end
end
