class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :name
      t.integer :person_id
      t.attachment :clip

      t.timestamps null: false
    end
  end
end
