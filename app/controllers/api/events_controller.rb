class Api::EventsController < Api::ApiController
  def index
    events = Event.all
    events_json = []
    events.each do |event|
      events_json << {
        id: event.id,
        name: event.name,
        banner: url_for(event.banner),
        logo: url_for(event.logo),
        event_owner: event.event_owner,
        url_event: event.url_event,
        local_event: event.local_event,
        limit_participants: event.limit_participants,
        description: event.description,
        event_agendas: event.event_agendas,
        start_date: event.start_date,
        end_date: event.end_date,
        batches: event.batches
      }
    end
    render status: 200, json: events_json.as_json
  end

  def show
    begin
      event = Event.find(params[:id])
      event_json = {
        id: event.id,
        name: event.name,
        banner: url_for(event.banner),
        logo: url_for(event.logo),
        event_owner: event.event_owner,
        url_event: event.url_event,
        local_event: event.local_event,
        limit_participants: event.limit_participants,
        description: event.description,
        event_agendas: event.event_agendas,
        start_date: event.start_date,
        end_date: event.end_date,
        agenta_type: event.agenda_type,
        batches: event.batches
      }
      render status: 200, json: event_json
    rescue
      render status: 404
    end
  end
end
