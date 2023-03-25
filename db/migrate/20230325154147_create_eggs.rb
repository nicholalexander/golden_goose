class CreateEggs < ActiveRecord::Migration[7.0]
  def change
    create_table :eggs do |t|
      t.uuid :uuid
      t.string :color
      t.string :size
      t.string :shape
      t.timestamps
    end
  end
end
