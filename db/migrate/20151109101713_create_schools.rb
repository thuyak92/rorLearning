class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string  :name, :null => false, :default => ''
      t.integer :age, :default => 0
    end
  end
end
