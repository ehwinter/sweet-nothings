class CreateNothings < ActiveRecord::Migration
  def change
    create_table :nothings do |t|
      t.string :message

      t.timestamps
    end
  end
end
