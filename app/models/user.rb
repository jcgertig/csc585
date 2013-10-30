class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
     :recoverable, :rememberable, :trackable, :validatable, :confirmable,
     :lockable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :provider, :uid

  has_one :profile

  def no_profile?
    profile.nil?
  end

  def empty_fields?
    profile.empty_fields?
  end

  def self.find_for_google_oauth(auth, signed_in_resource=nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    puts user.to_s
    puts "\n auth => " + auth.to_yaml
    unless user
  	user = User.create(
  	  provider: auth.provider,
  	  uid: auth.uid,
  	  email: auth.info.email,
  	  password: Devise.friendly_token[0,20]
  	)
    end
    user
  end

  def self.new_with_session(params, session)
  	super.tap do |user|
  	  if data = session["devise.google_data"] && session["devise.google_data"]["extra"]["raw_info"]
  		user.email = data["email"] if user.email.blank?
  	  end
  	end
  end
end
