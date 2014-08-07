class Customer < ActiveRecord::Base
  belongs_to :filter_type
  belongs_to :pool_type

  validates :full_name, presence: true
end
