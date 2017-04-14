class User < ApplicationRecord
  has_many :messages
  has_many :jobs

  has_many :messages_sent, class_name: "Message", foreign_key: "sender_id"
  has_many :messages_received, class_name: "Message", foreign_key: "receiver_id"

  has_many :jobs_posted, class_name: "Job", foreign_key: "user_id"
  has_many :jobs_to_do, class_name: "Job", foreign_key: "chosen_applicant_id"

  # has_many :job_applications, class_name: "Job", foreign_key: "user_id"
  # has_many :job_approvals, class_name: "Job", foreign_key: "user_id"

  def location
    "#{address_line2}, #{address_line3}"
  end

end
