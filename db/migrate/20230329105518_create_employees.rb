class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :admission_date
      t.integer :cpf, limit: 8
      t.string :email
      t.date :birth_date
      t.string :location
      t.string :function
      t.integer :wallet_working, limit: 8
      t.decimal :gross_salary
      t.boolean :active, default: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
