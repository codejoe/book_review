class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true

  default_scope -> { order('created_at ASC') }

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user

  def self.find_comments_by_user(user)
    where(["user_id = ?", user.id]).order("created_at DESC")
  end

  def self.find_comments_for_commentable(commentable_str, commentable_id)
    where(["commentable_type = ? and commentable_id = ?", commentable_str, commentable_id]).order("created_at DESC")
  end

  def self.find_commentable(commentable_str, commentable_id)
    commentable_str.constantize.find(commentable_id)
  end  
end
