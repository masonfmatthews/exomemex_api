class Clip < ActiveRecord::Base
  has_attached_file :clip
  validates_attachment_content_type :clip, :content_type => /\Aaudio\/.*\Z/

  validates :name, presence: true
end
