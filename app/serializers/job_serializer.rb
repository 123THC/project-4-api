class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :date, :hourly_rate, :address_line1, :address_line2, :address_line3, :address_line4
  has_one :user
end
