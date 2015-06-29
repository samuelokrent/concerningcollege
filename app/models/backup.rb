class Backup < ActiveRecord::Base
  def filename
    "#{self.created_at.strftime("%Y-%m-%dT%H:%M:%S")}.sql"
  end

  def display_name
    "#{self.created_at.in_time_zone("Central Time (US & Canada)").strftime("%B %-d, %Y, %I:%M:%S %P")}"
  end
end
