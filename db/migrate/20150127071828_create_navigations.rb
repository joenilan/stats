class CreateNavigations < ActiveRecord::Migration
  def change
    create_table :navigations do |t|

      t.timestamps null: false
    end
  end
end
