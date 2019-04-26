class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :label
      t.references :correct_answer, references: :employees

      t.timestamps
    end
  end
end
