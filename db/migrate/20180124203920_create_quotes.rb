class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :author
      t.string :quotation
      t.string :source

      t.timestamps
    end
  end
end
