class PoolType < ActiveRecord::Base
  validates :name, presence: true
end
