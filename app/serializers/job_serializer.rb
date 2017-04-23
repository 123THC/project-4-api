class JobSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :chosen_applicant
  has_many :applicants
  has_many :pictures
  has_many :categories
  has_many :comments

  attributes :id, :title, :description, :date, :hourly_rate, :address_line1, :address_line2, :address_line3, :address_line4, :lat, :lng, :postedBy, :postedById, :image_src, :categories, :applicants, :applicant_ids, :chosen_applicant

  def postedBy
    "#{object.user.username}"
  end

  def postedById
    "#{object.user.id}"
  end

  def image_src
    object.image.url
  end

end
