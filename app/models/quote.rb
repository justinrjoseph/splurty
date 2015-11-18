class Quote < ActiveRecord::Base
  validates :saying, presence: true, length: { minimum: 3, maximum: 140 }
  validates :author, presence: true, length: { minimum: 3, maximum: 50 }

  def unique_tag
    initials = self.author.split(' ').collect do |initial|
      initial[0]
    end

    "#{initials.join}##{id}"
  end
end
