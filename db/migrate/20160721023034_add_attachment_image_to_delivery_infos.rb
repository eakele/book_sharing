class AddAttachmentImageToDeliveryInfos < ActiveRecord::Migration
  def self.up
    change_table :delivery_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :delivery_infos, :image
  end
end
