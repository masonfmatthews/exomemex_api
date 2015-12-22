class Clip < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :user, presence: true

  has_attached_file :clip
  validates_attachment_content_type :clip, :content_type => /\Aaudio\/.*\Z/

end
