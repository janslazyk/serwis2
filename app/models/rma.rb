class Rma < ActiveRecord::Base
	belongs_to :company
	belongs_to :user 
	has_many :element_rmas
	has_many :statistic_rmas
end
