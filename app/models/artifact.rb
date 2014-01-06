class Artifact < ActiveRecord::Base
  attr_accessible :context, :county, :description, :latitude, :longitude, :period, :artifact_type, :user_id, :token, :cover
  
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true
  attr_accessible :images_attributes
  belongs_to :user

  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64
      break random_token unless Artifact.where(token: random_token).exists?
    end
  end
  
end
