class CreateUploadLogos < ActiveRecord::Migration[5.1]
  def change
    create_table :upload_logos do |t|
      t.string :logo

      t.timestamps
    end
  end
end
