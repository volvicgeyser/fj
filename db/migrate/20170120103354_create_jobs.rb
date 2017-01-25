class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :location
      t.string :category
      t.string :term
      t.string :office_location
      t.string :emp_pattern

      t.timestamps null: false
    end
  end
end
