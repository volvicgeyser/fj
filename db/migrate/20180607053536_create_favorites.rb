class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :job_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
