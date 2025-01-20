class AddDateToEvent < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :start_date, :string
    add_column :events, :end_date, :string
  end
end
