class AddAuthorToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :author, :string
  end
end
