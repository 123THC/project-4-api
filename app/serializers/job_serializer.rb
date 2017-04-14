class JobSerializer < ActiveModel::Serializer
  has_one :user
  has_one :accepted_applicant

  attributes :id, :title, :description, :date, :hourly_rate, :address_line1, :address_line2, :address_line3, :address_line4
end
