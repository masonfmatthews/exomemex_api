class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
