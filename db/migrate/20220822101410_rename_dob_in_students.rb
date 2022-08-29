class RenameDobInStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :dob, :date_of_birth
  end
end
