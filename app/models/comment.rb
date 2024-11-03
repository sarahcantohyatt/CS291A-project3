class Comment < ApplicationRecord
  belongs_to :post
  
  validate :no_election_speak_body
  
  def no_election_speak_body
    if self.body.include?("trump")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("Trump")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("harris")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("Harris")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("kamala")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("Kamala")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("election")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
    if self.body.include?("Election")
      self.errors.add(:body, "Error: \nBro, you can't post about the election here")
    end
  end
end
