class ModifyTextTypes < ActiveRecord::Migration
  def self.up
    change_column :revisions, :content, :text
    change_column :pages, :name, :string, :limit => 255
    change_column :webs, :additional_style, :text
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
