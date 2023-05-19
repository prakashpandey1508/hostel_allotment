class AddHostelToStudents < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :hostel, foreign_key: true
  end
end
