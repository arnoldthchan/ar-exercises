class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_inclusion_of :store_id, in: 1..2
  # before_create :testing
  after_create :testing # Will not be able to set the password


  private
    def testing
      generated_password = (0...8).map { (65 + rand(26)).chr }.join
      puts "Generating password: #{generated_password}"
      self.attributes = {password: generated_password}
    end

end
