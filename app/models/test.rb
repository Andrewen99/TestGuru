class Test < ApplicationRecord
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  belongs_to :category
  has_many :results

  def self.with_category(category_name)
    Test.joins(:category).where("categories.title == ?", category_name).order(title: :desc)
  end
end
