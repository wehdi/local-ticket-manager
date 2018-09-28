# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  has_many :messages
  has_many :comments
  attr_accessor :login

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false }
  # format: { with: /\A[a-zA-Z0-9]*\z/ }
  validates :admin, presence: false

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, authentication_keys: { email: false, login: true }

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions.to_hash).where(['lower(username) = :value OR lower(email) = :value', { value: login.downcase }]).first
    elsif conditions.key?(:username) || conditions.key?(:email)
      where(conditions.to_hash).first
    end
    end

  # Aprove user befor he can access
  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    approved? ? super : :not_approved
  end

  def email_required?
    false
  end
end
