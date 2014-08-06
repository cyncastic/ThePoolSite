class Job < ActiveRecord::Base
  has_one :customer
  has_one :worker

  validates :customer_id, presence: true
  validates :job_type_id, presence: true
end
