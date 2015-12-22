class Clip < ActiveRecord::Base
  belongs_to :person

  validates :name, presence: true
  validates :person, presence: true
  
  has_attached_file :clip
  validates_attachment_content_type :clip, :content_type => /\Aaudio\/.*\Z/

end
