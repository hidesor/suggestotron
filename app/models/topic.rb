class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def self.top
    order('votes_count DESC')
  end
end
