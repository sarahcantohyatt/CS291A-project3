class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true
  
  validate :no_election_speak_title, :no_election_speak_body
  
  def no_election_speak_title
    if self.title.include?("trump")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("Trump")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("harris")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("Harris")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("kamala")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("Kamala")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("election")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
    if self.title.include?("Election")
      self.errors.add(:title, "Error: \nBro, you can't post about the election here")
    end
  end
  
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
