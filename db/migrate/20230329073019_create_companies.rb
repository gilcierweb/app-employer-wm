class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :fantasy_name
      t.integer :cnpj, limit: 8
      t.string :owner_name
      t.string :location
      t.string :site_url
      t.string :email
      t.text :description
      t.date :birth_date
      t.string :logo
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
