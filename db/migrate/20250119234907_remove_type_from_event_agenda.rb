class RemoveTypeFromEventAgenda < ActiveRecord::Migration[8.0]
  def change
    remove_column :event_agendas, :type, :string
  end
end
