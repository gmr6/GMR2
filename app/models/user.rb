class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  after_create :assign_default_role
  has_many :home_videos
  has_many :home_tests

  def assign_default_role
   self.add_role(:customer) if self.roles.blank?
  end
end
