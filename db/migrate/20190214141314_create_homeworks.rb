class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
