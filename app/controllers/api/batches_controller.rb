class Api::BatchesController < Api::ApiController
  before_action :set_event
  def index
    batches = @event.batches
    batches_json = []
    batches.each do |batch|
      batches_json << {
        id: batch.id,
        name: batch.name,
        limit_tickets: batch.limit_tickets,
        value: batch.value,
        start_date: batch.start_date,
        end_date: batch.end_date,
        event_id: @event.id
      }
    end
    render status: 200, json: batches_json.as_json
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
