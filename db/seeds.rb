dev_week = Event.create!(
  name: 'DevWeek',
  banner: Rails.root.join('app', 'assets', 'images', 'devweek_banner.png'),
  logo: Rails.root.join('app', 'assets', 'images', 'devweek_logo.png'),
  url_event: 'https://devweek.example.com',
  local_event: 'São Paulo, Brazil',
  limit_participants: 500,
  description: 'A week full of development talks and workshops.',
  event_owner: 'John Doe'

)

techsummit = Event.create!(
  name: 'TechSummit',
  banner: Rails.root.join('app', 'assets', 'images', 'techsummit_banner.png'),
  logo: Rails.root.join('app', 'assets', 'images', 'techsummit_logo.png'),
  url_event: 'https://techsummit.example.com',
  local_event: 'Rio de Janeiro, Brazil',
  limit_participants: 300,
  description: 'Explore the latest in tech trends and innovations.',
  event_owner: 'Jane Smith'
)

EventAgenda.create(title: 'Agenda Dev Week', description: 'Esta agenda é usada para devweek',
                                                       email: 'devweek@email.com',
                                                       date: '2025/01/25', instructor: 'Gabriel Thiago',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: dev_week.id)

EventAgenda.create(title: 'Agenda Dev Week', description: 'Esta agenda é usada para devweek',
                                                       email: 'devweek@email.com',
                                                       date: '2025/01/25', instructor: 'Gabriel Thiago',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: dev_week.id)


EventAgenda.create(title: 'Agenda Dev Week', description: 'Esta agenda é usada para devweek',
                                                       email: 'devweek@email.com',
                                                       date: '2025/01/25', instructor: 'Gabriel Thiago',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: techsummit.id)
