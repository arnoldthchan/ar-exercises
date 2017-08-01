class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_inclusion_of :store_id, in: 1..2
  before_create :assign_before
  # after_create :assign_after


  private
    def assign_before
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.attributes = {password: generated_password}
    end

    def assign_after
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.update = (password: generated_password)
    end
end
