class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :plan_id
      t.string :image_url

      t.timestamps
    end
  end
end
