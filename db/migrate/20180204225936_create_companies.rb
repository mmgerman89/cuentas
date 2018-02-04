class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.references :home, foreign_key: true
      t.string :alias
      t.integer :periodicity
      t.date :since
      t.date :until
      t.integer :status

      t.timestamps
    end
  end
end
