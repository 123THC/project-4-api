class UserSerializer < ActiveModel::Serializer
has_many :jobs_posted

attributes :id, :username, :location, :jobs_posted

end
