class TickerSerializer < ActiveModel::Serializer
  attributes :id, :ticker_name, :name, :description
  has_many :end_of_days
end
