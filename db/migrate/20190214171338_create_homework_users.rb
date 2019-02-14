class CreateHomeworkUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :homework_users do |t|
      t.references :homework, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
