class CreatePeriodsVacations < ActiveRecord::Migration[7.0]
  def change
    create_table :periods_vacations do |t|
      t.string :name
      t.date :date_start
      t.date :date_end
      t.decimal :gross_salary
      t.decimal :average_value
      t.integer :number_dependents
      t.decimal :pension_alimentary
      t.boolean :bonus_pecuniary
      t.boolean :advance_parcel
      t.integer :days
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
