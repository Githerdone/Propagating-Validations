class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, :email, :title
      t.date :date
    end
  end
end
