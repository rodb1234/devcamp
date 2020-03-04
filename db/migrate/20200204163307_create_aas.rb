class CreateAas < ActiveRecord::Migration[6.0]
  def change
    create_table :aas do |t|
      t.string :teste
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
