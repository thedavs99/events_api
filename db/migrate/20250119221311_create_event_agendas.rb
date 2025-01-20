class CreateEventAgendas < ActiveRecord::Migration[8.0]
  def change
    create_table :event_agendas do |t|
      t.string :date
      t.string :title
      t.string :description
      t.string :instructor
      t.string :email
      t.string :start_time
      t.string :duration
      t.string :type
      t.string :event_agenda_id

      t.timestamps
    end
  end
end
