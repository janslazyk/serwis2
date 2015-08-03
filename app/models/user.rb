class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates_presence_of :name
  validates_presence_of :lastname

  #attr_accessible :name, :lastname, :email, :password, :password_confirmation, :remember_me, :company_attributes
         
  belongs_to :group
  belongs_to :company
  has_many :rmas #relacja dla klientow
  has_many :master_rmas #ralacja dla DT
  has_many :statistic_rmas
  accepts_nested_attributes_for :company
  
  before_save :default_values
  
  def default_values
    if !self.group_id
      self.group_id ||= 2
    end
  end
  
  def group?(group)
    return group == Group.find_by_user_id(self.id).group.name
  end
end
