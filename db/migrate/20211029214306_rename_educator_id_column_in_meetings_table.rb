class RenameEducatorIdColumnInMeetingsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column(:meetings, :educator_id, :teacher_id)
  end
end
