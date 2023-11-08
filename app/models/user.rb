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
  has_many :comments
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'


end
