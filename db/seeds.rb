dev_week = Event.create!(
  name: 'DevWeek',
  banner: Rails.root.join('app', 'assets', 'images', 'devweek_banner.jpeg'),
  logo: Rails.root.join('app', 'assets', 'images', 'devweek_logo.png'),
  url_event: 'https://devweek.example.com',
  local_event: 'São Paulo, Brazil',
  limit_participants: 500,
  description: 'A week full of development talks and workshops.',
  event_owner: 'John Doe',
  start_date: '2025-05-01',
  end_date: '2025-04-14'
)

techsummit = Event.create!(
  name: 'TechSummit',
  banner: Rails.root.join('app', 'assets', 'images', 'ruby_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'techsummit_logo.png'),
  url_event: 'https://techsummit.example.com',
  local_event: 'Rio de Janeiro, Brazil',
  limit_participants: 300,
  description: 'Explore the latest in tech trends and innovations.',
  event_owner: 'Jane Smith',
  start_date: '2025-05-01',
  end_date: '2025-04-14'
)

rubyweek = Event.create!(
  name: 'Ruby Update',
  banner: Rails.root.join('app', 'assets', 'images', 'techsummit_banner.jpeg'),
  logo: Rails.root.join('app', 'assets', 'images', 'ruby_logo.png'),
  url_event: 'https://techsummit.example.com',
  local_event: 'Rio de Janeiro, Brazil',
  limit_participants: 300,
  description: 'Explore the latest in tech trends and innovations.',
  event_owner: 'Jane Smith',
  start_date: '2025-05-01',
  end_date: '2025-04-14'
)

techsummit = Event.create!(
  name: 'ALOHA',
  banner: Rails.root.join('app', 'assets', 'images', 'techsummit_banner.jpeg'),
  logo: Rails.root.join('app', 'assets', 'images', 'techsummit_logo.png'),
  url_event: 'https://techsummit.example.com',
  local_event: 'Rio de Janeiro, Brazil',
  limit_participants: 300,
  description: 'Explore the latest in tech trends and innovations.',
  event_owner: 'Jane Smith',
  start_date: '2022-05-01',
  end_date: '2022-04-14'
)

EventAgenda.create(title: 'Agenda Dev Week dia 1', description: 'Esta agenda é usada para devweek',
                                                       email: 'gabriel@email.com',
                                                       date: '2025/01/25', instructor: 'Gabriel Thiago',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: dev_week.id, agenda_type: 'Workshop')

EventAgenda.create(title: 'Agenda Dev Week dia 2', description: 'Esta agenda é usada para devweek',
                                                       email: 'cesar@email.com',
                                                       date: '2025/01/26', instructor: 'Cesar',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: dev_week.id, agenda_type: 'Palestra')


EventAgenda.create(title: 'Agenda Dev Week', description: 'Esta agenda é usada para devweek',
                                                       email: 'devweek@email.com',
                                                       date: '2025/01/25', instructor: 'Gabriel Thiago',
                                                       start_time: '12:00', duration: '02:00',
                                                       event_id: techsummit.id)
