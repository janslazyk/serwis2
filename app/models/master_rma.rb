class MasterRma < ActiveRecord::Base
	belongs_to :element_rma
	belongs_to :user
end
