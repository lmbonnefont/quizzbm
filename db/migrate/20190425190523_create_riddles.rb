class CreateRiddles < ActiveRecord::Migration[5.2]
  def change
    create_table :riddles do |t|
      t.string :label
      t.references :quizz, foreign_key: true

      t.timestamps
    end
  end
end
