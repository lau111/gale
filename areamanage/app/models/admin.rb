class Admin < ApplicationRecord
  # ADD 2018/1/27
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :authentication_keys => [:login]

   # ADD 2018/1/27
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
    else
       where(conditions).first
    end
  end

  validates :username, uniqueness: { case_sensitive: :false }, length: { minimum: 4, maximum: 20 },   format: { with: /\A[a-z0-9]+\z/, message: "ユーザー名は半角英数字です"}

end
