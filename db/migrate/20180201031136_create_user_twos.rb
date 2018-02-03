class CreateUserTwos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_twos do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
