class JobSerializer < ActiveModel::Serializer
  has_one :user
  has_one :chosen_applicant_id
  has_many :applicants
  has_many :pictures
  has_many :categories

  attributes :id, :title, :description, :date, :hourly_rate, :address_line1, :address_line2, :address_line3, :address_line4, :postedBy, :image_src

  def postedBy
    "#{object.user.username}"
  end

  def image_src
    object.image.url
  end
end
