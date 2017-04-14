class UserSerializer < ActiveModel::Serializer
has_many :jobs_posted
has_many :jobs_to_do

attributes :id, :username, :location, :jobs_posted, :jobs_to_do

end
