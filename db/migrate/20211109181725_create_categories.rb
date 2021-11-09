class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :s0
      t.string :s1
      t.string :s2
      t.string :s3
      t.string :s4
      t.string :s5

      t.timestamps
    end
  end
end
