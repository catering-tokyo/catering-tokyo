class CreateAdminInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_informations do |t|
    	t.string :title
    	t.text :body
    	t.string :info_image_id
    	t.boolean :info_status, default: true, null: false
      t.timestamps
    end
  end
end
