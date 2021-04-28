class AddNullConstraints < ActiveRecord::Migration[6.1]
  def up
    change_column_null(:tests, :title, false)
    change_column_null(:answers, :body, false)
    change_column_null(:questions, :body, false)
    change_column_null(:categories, :title, false)

    change_column_null(:users, :name, false)
    change_column_null(:users, :email, false)
    change_column_null(:users, :password, false)
  end

  def down
    change_column_null(:tests, :title, true)
    change_column_null(:answers, :body, true)
    change_column_null(:questions, :body, true)
    change_column_null(:categories, :title, true)

    change_column_null(:users, :name, true)
    change_column_null(:users, :email, true)
    change_column_null(:users, :password, true)
  end
end
