class Job < ActiveRecord::Base
  belongs_to :customer
  belongs_to :job_type
  belongs_to :worker

  validates :customer_id, presence: true
  validates :job_type_id, presence: true
end
