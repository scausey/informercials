class CreateInfomercials < ActiveRecord::Migration[5.2]
  def change
    create_table :infomercials do |t|
      t.string :title
      t.string :youtube_vid_id
      t.string :description

      t.timestamps
    end
  end
end
