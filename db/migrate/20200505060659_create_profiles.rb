class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name,                       null: false
      t.string :last_name,                  null: false
      t.string :phone,                      null: false
      t.date :dob,                          null: false
      t.string :address,                    null: false

      t.timestamps
    end
  end
end
