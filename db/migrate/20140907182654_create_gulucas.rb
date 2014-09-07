class CreateGulucas < ActiveRecord::Migration
  def change
    create_table :gulucas do |t|
      t.string :nombre
      t.string :correo

      t.timestamps
    end
  end
end
