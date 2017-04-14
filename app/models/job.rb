class Job < ApplicationRecord
  belongs_to :user
  has_many :pictures

  has_one :chosen_applicant, class_name: 'User', foreign_key: 'chosen_applicant_id'

end
