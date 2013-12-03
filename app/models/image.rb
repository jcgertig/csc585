class Image < ActiveRecord::Base

  attr_accessible :file, :artifact_id, :user_id
  belongs_to :artifact
  mount_uploader :file, ImageUploader

  include Rails.application.routes.url_helpers

  def to_jq_upload
  {
    "name" => read_attribute(:file),
    "size" => file.size,
    "url" => file.url,
    "delete_url" => id,
    "delete_type" => "DELETE" 
   }
  end
end
