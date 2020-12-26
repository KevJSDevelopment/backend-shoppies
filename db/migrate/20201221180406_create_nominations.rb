class CreateNominations < ActiveRecord::Migration[6.0]
  def change
    create_table :nominations do |t|
      t.string :title
      t.string :year
      t.integer :total

      t.timestamps
    end
  end
end
