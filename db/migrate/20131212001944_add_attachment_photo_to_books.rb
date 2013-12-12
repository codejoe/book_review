class AddAttachmentPhotoToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :books, :photo
  end
end
