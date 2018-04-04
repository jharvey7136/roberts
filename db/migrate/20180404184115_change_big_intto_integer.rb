class ChangeBigInttoInteger < ActiveRecord::Migration[5.1]
  change_table :albums do |t|
    t.remove :main_image, :thumb_image, :topic_id
    t.integer :topic_id
  end
end
