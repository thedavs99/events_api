class Event < ApplicationRecord
  has_one_attached :logo
  has_one_attached :banner
  has_many :event_agendas
  has_many :batches
end
