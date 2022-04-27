class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :street, null: false, foreign_key: true

      t.timestamps
    end
  end
end
