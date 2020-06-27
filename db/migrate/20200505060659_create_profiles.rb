class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name,                       null: false, default: "name"
      t.string :last_name,                  null: false, default: "last_name"
      t.string :phone,                      null: false, default: "phone"
      t.date :dob,                          null: false, default: Date.new(2020, 01, 01)
      t.string :address,                    null: false, default: "address"

      t.timestamps
    end
  end
end
