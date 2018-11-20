class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_validation :assign_role
  belongs_to :role
  #belongs_to :course

  def assign_role
    self.role = Role.find_by_name("Student") if self.role.nil?
  end
end
