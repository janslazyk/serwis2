class ElementRma < ActiveRecord::Base
	belongs_to :rma
	has_many :maseter_rmas
	has_one :statistic_rma
end
