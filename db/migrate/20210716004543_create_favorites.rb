class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :anime
      t.boolean :Myster
      t.boolean :Action
      t.boolean :Dementia
      t.boolean :Comedy
      t.boolean :Demons
      t.timestamps
    end
  end
end
