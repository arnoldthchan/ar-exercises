class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_inclusion_of :store_id, in: 1..2
  # before_create :assign_password_before_create
  # after_create :assign_password_after_create
  before_save :assign_password_before_save #Runs after create callbacks


  private
    def assign_password_before_create
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.attributes = {password: generated_password}
    end

    def assign_password_after_create
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.update(password: generated_password)
    end

    def assign_password_before_save
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.attributes = {password: generated_password}
    end
end
