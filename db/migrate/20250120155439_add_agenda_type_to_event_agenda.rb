class AddAgendaTypeToEventAgenda < ActiveRecord::Migration[8.0]
  def change
    add_column :event_agendas, :agenda_type, :string
  end
end
