dev_week = Event.create!(
  name: 'DevWeek',
  banner: Rails.root.join('app', 'assets', 'images', 'devweek_banner.jpeg'),
  logo: Rails.root.join('app', 'assets', 'images', 'devweek_logo.png'),
  url_event: 'https://devweek.example.com',
  local_event: 'São Paulo, Brazil',
  limit_participants: 500,
  description: 'A week full of development talks and workshops.',
  event_owner: 'John Doe',
  start_date: '2025-04-01',
  end_date: '2025-05-14'
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

Batch.create(name: 'Entrada - VIP', limit_tickets: 50, start_date: '2024-12-30', value: 40.00, end_date: '2025-02-01', event_id: dev_week.id)
Batch.create(name: 'Entrada - Meia', limit_tickets: 20, start_date: '2025-02-27', value: 20.00, end_date: '2025-03-01', event_id: dev_week.id)
Batch.create(name: 'Entrada - Meia', limit_tickets: 20, start_date: '2024-02-27', value: 20.00, end_date: '2024-03-01', event_id: dev_week.id)

angularconf = Event.create!(
  name: 'AngularConf',
  banner: Rails.root.join('app', 'assets', 'images', 'angularconf_banner.png'),
  logo: Rails.root.join('app', 'assets', 'images', 'angularconf_logo.png'),
  url_event: 'https://angularconf.example.com',
  local_event: 'Brasília, Brazil',
  limit_participants: 400,
  description: 'A conference dedicated to Angular development.',
  event_owner: 'Lucas Silva',
  start_date: '2025-06-15',
  end_date: '2025-06-17'
)

jsworld = Event.create!(
  name: 'JS World',
  banner: Rails.root.join('app', 'assets', 'images', 'jsworld_banner.png'),
  logo: Rails.root.join('app', 'assets', 'images', 'jsworld_logo.png'),
  url_event: 'https://jsworld.example.com',
  local_event: 'São Paulo, Brazil',
  limit_participants: 600,
  description: 'Exploring the JavaScript ecosystem from front to back.',
  event_owner: 'Maria Oliveira',
  start_date: '2025-07-05',
  end_date: '2025-07-07'
)

dockerfest = Event.create!(
  name: 'DockerFest',
  banner: Rails.root.join('app', 'assets', 'images', 'dockerfest_banner.jpeg'),
  logo: Rails.root.join('app', 'assets', 'images', 'dockerfest_logo.jpeg'),
  url_event: 'https://dockerfest.example.com',
  local_event: 'Belo Horizonte, Brazil',
  limit_participants: 350,
  description: 'A deep dive into containerization and Docker.',
  event_owner: 'Carlos Pereira',
  start_date: '2025-08-20',
  end_date: '2025-08-22'
)

# Criando agendas para o AngularConf
EventAgenda.create!(
  title: 'Agenda AngularConf: Introdução ao Angular',
  description: 'Uma palestra sobre os fundamentos do Angular.',
  email: 'luan@email.com',
  date: '2025/06/15',
  instructor: 'Luan Martins',
  start_time: '09:00',
  duration: '02:00',
  event_id: angularconf.id,
  agenda_type: 'Palestra'
)

EventAgenda.create!(
  title: 'Agenda AngularConf: Angular Avançado',
  description: 'Explorando recursos avançados do Angular.',
  email: 'aline@email.com',
  date: '2025/06/16',
  instructor: 'Aline Souza',
  start_time: '14:00',
  duration: '03:00',
  event_id: angularconf.id,
  agenda_type: 'Workshop'
)

# Criando agendas para o JS World
EventAgenda.create!(
  title: 'Agenda JS World: Introdução ao Node.js',
  description: 'Aprenda sobre a plataforma Node.js e suas aplicações.',
  email: 'jose@email.com',
  date: '2025/07/05',
  instructor: 'José Costa',
  start_time: '10:00',
  duration: '02:00',
  event_id: jsworld.id,
  agenda_type: 'Palestra'
)

EventAgenda.create!(
  title: 'Agenda JS World: React vs Vue.js',
  description: 'Comparando dois dos frameworks JavaScript mais populares.',
  email: 'daniela@email.com',
  date: '2025/07/06',
  instructor: 'Daniela Lima',
  start_time: '13:00',
  duration: '02:00',
  event_id: jsworld.id,
  agenda_type: 'Palestra'
)

# Criando agendas para o DockerFest
EventAgenda.create!(
  title: 'Agenda DockerFest: Containers e Docker Basics',
  description: 'Introdução ao conceito de containers e Docker.',
  email: 'ricardo@email.com',
  date: '2025/08/20',
  instructor: 'Ricardo Gomes',
  start_time: '08:00',
  duration: '03:00',
  event_id: dockerfest.id,
  agenda_type: 'Workshop'
)

EventAgenda.create!(
  title: 'Agenda DockerFest: Orquestração com Kubernetes',
  description: 'Explorando Kubernetes para orquestração de containers.',
  email: 'fernanda@email.com',
  date: '2025/08/21',
  instructor: 'Fernanda Rocha',
  start_time: '14:00',
  duration: '02:00',
  event_id: dockerfest.id,
  agenda_type: 'Palestra'
)

# Criando lotes de ingressos para AngularConf
Batch.create!(
  name: 'Entrada - Early Bird',
  limit_tickets: 100,
  start_date: '2025-04-01',
  value: 60.00,
  end_date: '2025-05-01',
  event_id: angularconf.id
)

Batch.create!(
  name: 'Entrada - Regular',
  limit_tickets: 200,
  start_date: '2025-05-02',
  value: 100.00,
  end_date: '2025-06-01',
  event_id: angularconf.id
)

# Criando lotes de ingressos para JS World
Batch.create!(
  name: 'Entrada - Early Bird',
  limit_tickets: 150,
  start_date: '2025-03-01',
  value: 50.00,
  end_date: '2025-05-01',
  event_id: jsworld.id
)

Batch.create!(
  name: 'Entrada - Regular',
  limit_tickets: 300,
  start_date: '2025-05-02',
  value: 90.00,
  end_date: '2025-07-01',
  event_id: jsworld.id
)

# Criando lotes de ingressos para DockerFest
Batch.create!(
  name: 'Entrada - General',
  limit_tickets: 150,
  start_date: '2025-06-01',
  value: 80.00,
  end_date: '2025-07-01',
  event_id: dockerfest.id
)

Batch.create!(
  name: 'Entrada - VIP',
  limit_tickets: 50,
  start_date: '2025-06-01',
  value: 120.00,
  end_date: '2025-07-01',
  event_id: dockerfest.id
)

# Criando o evento DevCon
devcon = Event.create!(
  name: 'DevCon',
  banner: Rails.root.join('app', 'assets', 'images', 'devcon_banner.png'),
  logo: Rails.root.join('app', 'assets', 'images', 'devcon_logo.png'),
  url_event: 'https://devcon.example.com',
  local_event: 'Curitiba, Brazil',
  limit_participants: 800,
  description: 'A conference that brings together developers from around the world.',
  event_owner: 'Carlos Oliveira',
  start_date: '2025-09-10',
  end_date: '2025-09-12'
)

# Criando o evento WebDev Summit
webdevsummit = Event.create!(
  name: 'WebDev Summit',
  banner: Rails.root.join('app', 'assets', 'images', 'webdevsummit_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'webdevsummit_logo.png'),
  url_event: 'https://webdevsummit.example.com',
  local_event: 'Florianópolis, Brazil',
  limit_participants: 1000,
  description: 'Web development technologies and trends for modern developers.',
  event_owner: 'Fernanda Souza',
  start_date: '2025-11-01',
  end_date: '2025-11-03'
)

# Criando o evento DataSci Con
datascicon = Event.create!(
  name: 'DataSci Con',
  banner: Rails.root.join('app', 'assets', 'images', 'datascicon_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'datascicon_logo.png'),
  url_event: 'https://datascicon.example.com',
  local_event: 'Salvador, Brazil',
  limit_participants: 500,
  description: 'A conference focused on Data Science and AI advancements.',
  event_owner: 'Thiago Lima',
  start_date: '2025-10-15',
  end_date: '2025-10-17'
)

# Criando lotes de ingressos para DevCon
Batch.create!(
  name: 'Entrada - Early Bird',
  limit_tickets: 150,
  start_date: '2025-05-01',
  value: 100.00,
  end_date: '2025-07-01',
  event_id: devcon.id
)

Batch.create!(
  name: 'Entrada - General Admission',
  limit_tickets: 500,
  start_date: '2025-07-02',
  value: 150.00,
  end_date: '2025-09-01',
  event_id: devcon.id
)

# Criando lotes de ingressos para WebDev Summit
Batch.create!(
  name: 'Entrada - VIP',
  limit_tickets: 200,
  start_date: '2025-08-01',
  value: 250.00,
  end_date: '2025-09-30',
  event_id: webdevsummit.id
)

Batch.create!(
  name: 'Entrada - Regular',
  limit_tickets: 800,
  start_date: '2025-09-01',
  value: 150.00,
  end_date: '2025-10-30',
  event_id: webdevsummit.id
)

# Criando lotes de ingressos para DataSci Con
Batch.create!(
  name: 'Entrada - Academia',
  limit_tickets: 100,
  start_date: '2025-06-01',
  value: 50.00,
  end_date: '2025-08-01',
  event_id: datascicon.id
)

Batch.create!(
  name: 'Entrada - Profissional',
  limit_tickets: 400,
  start_date: '2025-08-02',
  value: 200.00,
  end_date: '2025-09-30',
  event_id: datascicon.id
)

# Criando o evento PythonConf
pythonconf = Event.create!(
  name: 'PythonConf',
  banner: Rails.root.join('app', 'assets', 'images', 'pythonconf_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'pythonconf_logo.png'),
  url_event: 'https://pythonconf.example.com',
  local_event: 'Recife, Brazil',
  limit_participants: 500,
  description: 'O maior evento de Python no Brasil, cobrindo tópicos básicos e avançados.',
  event_owner: 'Ana Paula',
  start_date: '2025-10-10',
  end_date: '2025-10-12'
)

EventAgenda.create!(
  title: 'Introdução ao Python',
  description: 'Uma palestra para iniciantes aprenderem os fundamentos do Python.',
  email: 'rafael@email.com',
  date: '2025-10-10',
  instructor: 'Rafael Lima',
  start_time: '09:00',
  duration: '02:00',
  event_id: pythonconf.id,
  agenda_type: 'Palestra'
)

EventAgenda.create!(
  title: 'Data Science com Python',
  description: 'Workshop sobre como utilizar Python para análise de dados.',
  email: 'carla@email.com',
  date: '2025-10-11',
  instructor: 'Carla Silva',
  start_time: '14:00',
  duration: '03:00',
  event_id: pythonconf.id,
  agenda_type: 'Workshop'
)

Batch.create!(
  name: 'Entrada - Early Bird',
  limit_tickets: 200,
  start_date: '2025-08-01',
  value: 50.00,
  end_date: '2025-09-01',
  event_id: pythonconf.id
)

Batch.create!(
  name: 'Entrada - Regular',
  limit_tickets: 300,
  start_date: '2025-09-02',
  value: 80.00,
  end_date: '2025-10-01',
  event_id: pythonconf.id
)

# Criando o evento AI Summit
aisummit = Event.create!(
  name: 'AI Summit',
  banner: Rails.root.join('app', 'assets', 'images', 'aisummit_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'aisummit_logo.jpg'),
  url_event: 'https://aisummit.example.com',
  local_event: 'Salvador, Brazil',
  limit_participants: 600,
  description: 'Explorando o futuro da inteligência artificial.',
  event_owner: 'João Almeida',
  start_date: '2025-09-20',
  end_date: '2025-09-22'
)

EventAgenda.create!(
  title: 'Introdução à Inteligência Artificial',
  description: 'Uma palestra sobre os conceitos básicos de IA.',
  email: 'marina@email.com',
  date: '2025-09-20',
  instructor: 'Marina Costa',
  start_time: '10:00',
  duration: '02:00',
  event_id: aisummit.id,
  agenda_type: 'Palestra'
)

EventAgenda.create!(
  title: 'IA Aplicada em Negócios',
  description: 'Workshop sobre como a IA pode transformar empresas.',
  email: 'pedro@email.com',
  date: '2025-09-21',
  instructor: 'Pedro Nogueira',
  start_time: '15:00',
  duration: '03:00',
  event_id: aisummit.id,
  agenda_type: 'Workshop'
)

Batch.create!(
  name: 'Entrada - General',
  limit_tickets: 300,
  start_date: '2025-07-01',
  value: 70.00,
  end_date: '2025-08-20',
  event_id: aisummit.id
)

Batch.create!(
  name: 'Entrada - VIP',
  limit_tickets: 100,
  start_date: '2025-07-01',
  value: 120.00,
  end_date: '2025-08-20',
  event_id: aisummit.id
)

# Criando o evento DevOps Day
devopsday = Event.create!(
  name: 'DevOps Day',
  banner: Rails.root.join('app', 'assets', 'images', 'devopsday_banner.jpg'),
  logo: Rails.root.join('app', 'assets', 'images', 'devopsday_logo.png'),
  url_event: 'https://devopsday.example.com',
  local_event: 'Porto Alegre, Brazil',
  limit_participants: 400,
  description: 'Um dia inteiro dedicado a práticas e ferramentas de DevOps.',
  event_owner: 'Lucas Ferreira',
  start_date: '2025-11-05',
  end_date: '2025-11-05'
)

EventAgenda.create!(
  title: 'Práticas Essenciais de DevOps',
  description: 'Entenda os principais conceitos e práticas do DevOps.',
  email: 'claudia@email.com',
  date: '2025-11-05',
  instructor: 'Claudia Mendes',
  start_time: '09:00',
  duration: '02:00',
  event_id: devopsday.id,
  agenda_type: 'Palestra'
)

EventAgenda.create!(
  title: 'Automação com CI/CD',
  description: 'Workshop sobre como configurar pipelines de CI/CD.',
  email: 'thiago@email.com',
  date: '2025-11-05',
  instructor: 'Thiago Araújo',
  start_time: '13:00',
  duration: '03:00',
  event_id: devopsday.id,
  agenda_type: 'Workshop'
)

Batch.create!(
  name: 'Entrada - Early Bird',
  limit_tickets: 150,
  start_date: '2025-09-01',
  value: 60.00,
  end_date: '2025-10-01',
  event_id: devopsday.id
)

Batch.create!(
  name: 'Entrada - Regular',
  limit_tickets: 250,
  start_date: '2025-10-02',
  value: 100.00,
  end_date: '2025-11-01',
  event_id: devopsday.id
)
