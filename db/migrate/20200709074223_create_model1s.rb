class CreateModel1s < ActiveRecord::Migration[6.0]
  def change
    create_table :model1s do |t|
      t.string :title

      t.timestamps
    end
  end
end
