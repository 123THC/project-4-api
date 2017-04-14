class Job < ApplicationRecord
  belongs_to :user
  has_many :pictures

  has_one :chosen_applicant, class_name: 'User', foreign_key: 'chosen_applicant_id'
  has_and_belongs_to_many :applicants, class_name: "User", join_table: "jobs_users"

end
