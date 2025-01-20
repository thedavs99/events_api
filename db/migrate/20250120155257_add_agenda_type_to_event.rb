class AddAgendaTypeToEvent < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :agenda_type, :string
  end
end
