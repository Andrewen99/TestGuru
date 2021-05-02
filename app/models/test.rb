class Test < ApplicationRecord
  def self.with_category(category_name)
    select(:title).joins('JOIN categories ON tests.category_id = categories.id').where(
      categories: { title: category_name }
    ).order(title: :desc).map(&:title)
  end
end
