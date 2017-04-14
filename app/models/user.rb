class User < ApplicationRecord
  has_many :messages
  has_many :jobs

  has_many :messages_sent, class_name: "Message", foreign_key: "sender_id"
  has_many :messages_received, class_name: "Message", foreign_key: "receiver_id"

  # has_many :job_applications, class_name: "Job", foreign_key: "user_id"
  # has_many :job_approvals, class_name: "Job", foreign_key: "user_id"
end
