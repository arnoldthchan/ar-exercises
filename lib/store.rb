class Store < ActiveRecord::Base
  has_many :employees
  validates_length_of :name, minimum: 3
  validates_numericality_of :annual_revenue, greater_than: 0
  validate :has_apparel?

  def has_apparel?
    if !mens_apparel && !womens_apparel
      errors[:base] << "Store must have at least one type of apparel"
    end
  end
end
