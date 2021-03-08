class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.references :user,          foreign_key:true
      t.string :title,             null: false
      t.text :content,             null: false
      t.date :deadline,            null: false
      t.timestamps
    end
  end
end
