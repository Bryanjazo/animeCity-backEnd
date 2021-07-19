class CreateWatches < ActiveRecord::Migration[6.1]
  def change
    create_table :watches do |t|
      t.belongs_to :user
      t.belongs_to :anime
      t.timestamps
    end
  end
end
