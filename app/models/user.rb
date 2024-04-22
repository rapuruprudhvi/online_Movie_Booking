class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Define which attributes can be searched by Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "id", "name", "updated_at"]
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
