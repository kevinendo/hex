class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :socket_gems, :type, :gem_type
  end

  def down
    rename_column :socket_gems, :gem_type, :type
  end
end
