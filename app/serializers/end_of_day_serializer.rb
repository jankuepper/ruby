class EndOfDaySerializer < ActiveModel::Serializer
  attributes :id, :open, :high, :low, :close
  belongs_to :ticker
end
