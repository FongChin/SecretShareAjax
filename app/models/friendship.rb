class Friendship < ActiveRecord::Base
  attr_accessible :in_friend_id, :out_friend_id
  validates :in_friend_id, :out_friend_id, :presence => true

  belongs_to(
    :in_friend,
    :class_name => "User"
  )

  belongs_to(
    :out_friend,
    :class_name => "User"
  )

  def self.can_friend?(out_friend_id, in_friend_id)
    !Friendship.exists?({:out_friend_id => out_friend_id,
                        :in_friend_id => in_friend_id})
  end

  def self.can_unfriend?(out_friend_id, in_friend_id)
    self.can_friend?(out_friend_id, in_friend_id)
  end
end
