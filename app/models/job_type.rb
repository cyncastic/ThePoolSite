class JobType < ActiveRecord::Base
  validates :name, presence: true
end
