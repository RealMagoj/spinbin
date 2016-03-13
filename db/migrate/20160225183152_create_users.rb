class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :dj_name
      t.string :genre
      t.string :bio
      t.string :venues
      t.string :photo
      t.string :sample_mix
      t.timestamps
    end
  end
end
