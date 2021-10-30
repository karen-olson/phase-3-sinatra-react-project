class RenameEducatorsTable < ActiveRecord::Migration[6.1]
  def change
    rename_table('educators', 'teachers')
  end
end
