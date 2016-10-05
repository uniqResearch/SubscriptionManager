class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :locality, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
