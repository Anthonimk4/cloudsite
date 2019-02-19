class CreateArchivos < ActiveRecord::Migration[5.2]
  def change
    create_table :archivos do |t|
      t.string :name

      t.timestamps
    end
  end
end
