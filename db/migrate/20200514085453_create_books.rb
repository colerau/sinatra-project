class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :popularity 
      t.string :title
      t.string :author
    end
  end
end
