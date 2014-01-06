class Image < ActiveRecord::Base
  attr_accessible :file, :artifact_id, :user_id, :artifact_token, :crop_x, :crop_y, :crop_w, :crop_h
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  
  belongs_to :artifact
  belongs_to :user
  
  mount_uploader :file, ImageUploader

  after_update :crop_image

  def to_jq_upload
  {
    "name" => read_attribute(:file),
    "size" => file.size,
    "url" => file.url,
    "thumbnail_url" => file.thumb.url,
    "delete_url" => id,
    "image_id" => id,
    "delete_type" => "DELETE" 
   }
  end

  def crop_image
    file.recreate_versions! if crop_x.present?
    current_version = self.file.current_path
    large_version = "#{Rails.root}/public" + self.file.versions[:large].to_s

    FileUtils.rm(current_version)
    FileUtils.cp(large_version, current_version)
  end
end
