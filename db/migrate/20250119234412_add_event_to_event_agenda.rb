class AddEventToEventAgenda < ActiveRecord::Migration[8.0]
  def change
    add_reference :event_agendas, :event, null: false, foreign_key: true
  end
end
