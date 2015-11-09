class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string  :name, :default => nil
      t.integer :int, :default => 0
    end
  end
end
