class AddCompanyColumnRoasters < ActiveRecord::Migration
  def change
  	add_column :roasters, :company, :string
  	add_column :roasters, :role, :string
  end
end
