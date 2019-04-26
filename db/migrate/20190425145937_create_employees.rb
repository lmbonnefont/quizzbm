class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :position
      t.string :summary
      t.text :text

      t.timestamps
    end
  end
end
