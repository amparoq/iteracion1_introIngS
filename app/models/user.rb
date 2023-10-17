class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    enum role: {
        Desarrollador: 0,
        Supervisor: 1,
        Gerente: 2
    }
    
  has_many :user_groups
  has_many :groups, through: :user_groups
  has_many :tasks

end
