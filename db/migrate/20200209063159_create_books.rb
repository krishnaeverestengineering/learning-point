class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.text :desc
      t.float :price
      t.text :short_desc

      t.timestamps
    end
  end
end
