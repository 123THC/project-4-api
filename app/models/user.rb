class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_secure_password validations: false

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true

  has_many :messages
  has_many :jobs

  has_many :messages_sent, class_name: "Message", foreign_key: "sender_id"
  has_many :messages_received, class_name: "Message", foreign_key: "receiver_id"

  has_many :jobs_posted, class_name: "Job", foreign_key: "user_id"
  has_many :jobs_to_do, class_name: "Job", foreign_key: "chosen_applicant_id"
  has_and_belongs_to_many :jobs_applied_for, class_name: "Job", join_table: "jobs_users"

  def location
    "#{address_line2}, #{address_line3}"
  end

  def oauth_login?
    github_id.present?
  end

end
