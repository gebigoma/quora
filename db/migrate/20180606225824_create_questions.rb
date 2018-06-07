class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :body
      t.boolean :answered

      t.timestamps
    end
  end
end
