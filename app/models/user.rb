class User < ActiveRecord::Base
  has_many :artifacts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :uid, :addr1, :addr2, :city, :conntacted, :first_name, :last_name, :phone, :state, :user_name, :zipcode

def self.find_for_google_oauth(auth, signed_in_resource=nil)
  user = User.where(:provider => auth.provider, :uid => auth.uid).first
  unless user
    user = User.create(name:auth.extra.raw_info.name,
      provider:auth.provider,
      uid:auth.uid,
      email:auth.info.email,
      password:Devise.friendly_token[0,20]
    )
  end
  user
end

end
