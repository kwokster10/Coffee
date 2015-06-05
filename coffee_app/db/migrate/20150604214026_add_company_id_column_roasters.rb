class AddCompanyIdColumnRoasters < ActiveRecord::Migration
  def change
  	add_column :roasters, :company_id, :string
  	add_column :roasters, :phone, :string
  	remove_column :roasters, :company
  end
end
