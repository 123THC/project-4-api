class UserSerializer < ActiveModel::Serializer
has_many :jobs_posted
has_many :jobs_to_do
has_many :jobs_applied_for

attributes :id, :username, :location, :jobs_posted, :jobs_to_do, :image_src

  def image_src
    object.image.url
  end
end
