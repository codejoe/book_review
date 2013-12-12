module ActsAsCommentable
  module Comment
    def self.included(comment_model)
      comment_model.extend Finders
      comment_model.scope :in_order, comment_model.order('created_at ASC')
      comment_model.scope :recent, comment_model.order('created_at DESC')
    end
    
    module Finders
      def find_comments_by_user(user)
        where(["user_id = ?", user.id]).order("created_at DESC")
      end

      def find_comments_for_commentable(commentable_str, commentable_id)
        where(["commentable_type = ? and commentable_id = ?", commentable_str, commentable_id]).order("created_at DESC")
      end

      def find_commentable(commentable_str, commentable_id)
        commentable_str.constantize.find(commentable_id)
      end
    end
  end
end