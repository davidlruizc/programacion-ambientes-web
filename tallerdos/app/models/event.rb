class Event < ApplicationRecord
  validates_presence_of :titulo, :descripcion
end
