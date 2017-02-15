class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, omniauth_providers: [:google_oauth2]

  EMAIL_REGEX = /\A[A-Z0-9a-z]+@(growthaccelerationpartners|wearegap)\.com\z/

  validates :email, format: {
    with: EMAIL_REGEX,
    message: I18n.t('error.invalid_domain')
  }

  def password_required?
    new_record? ? false : super
  end

  def admin?
    admin
  end

end
