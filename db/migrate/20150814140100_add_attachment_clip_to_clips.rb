class AddAttachmentClipToClips < ActiveRecord::Migration
  def self.up
    change_table :clips do |t|
      t.attachment :clip
    end
  end

  def self.down
    remove_attachment :clips, :clip
  end
end
