class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies do |t|

      t.timestamps
    end
  end
end
