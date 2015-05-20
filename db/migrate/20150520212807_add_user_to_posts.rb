class AddUserToPosts < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true, foreign_key: true

    Post.all.each { |p| p.user = User.last; p.save! }
  end
end
