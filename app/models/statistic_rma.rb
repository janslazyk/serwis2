class StatisticRma < ActiveRecord::Base
	belongs_to :company
	belongs_to :rma
	#belongs_to :producer
	belongs_to :element_rma #but element_rma has_one statistic_rma
	belongs_to :user #czyli customer
end
