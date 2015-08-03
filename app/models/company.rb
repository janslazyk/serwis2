class Company < ActiveRecord::Base
  has_many :users
  has_many :rmas
  has_many :statistic_rmas
end
