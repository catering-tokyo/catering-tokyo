class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|

    	t.integer :shop_id, null: false

      t.text :introduction, null: false
      t.string :name, null: false
      t.string :course_image_id

      t.integer :people_number
      t.integer :maximum_people, null: false
      t.integer :minimum_people, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
