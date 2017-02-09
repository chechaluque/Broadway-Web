class AddAttachmentPlayImageToPlays < ActiveRecord::Migration
  def self.up
    change_table :plays do |t|
      t.attachment :play_image
    end
  end

  def self.down
    remove_attachment :plays, :play_image
  end
end
